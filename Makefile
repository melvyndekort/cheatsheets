install_path=~/docs

.DEFAULT_GOAL := all
.PHONY: clean installdirs install uninstall

SRCS := $(wildcard *.md)
HTMLS := $(SRCS:%.md=%.html)

all: ${HTMLS}

%.html: %.md
	@docker container run --rm -it -u 1000:1000 -v $(CURDIR):/data jfroche/docker-markdown $<
	@mv $(@:.html=.md.html) $@

clean:
	@rm -f ${HTMLS}

installdirs:
	@mkdir -p $(install_path)

uninstall:
	@rm -rf $(install_path)

install: uninstall installdirs
	@mv *.html $(install_path)/
