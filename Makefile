INSTALL_PATH=~/docs
CURRENT_UID := $(shell id -u)
CURRENT_GID := $(shell id -g)

.DEFAULT_GOAL := all
.PHONY: clean installdirs install uninstall

SRCS := $(wildcard *.md)
HTMLS := $(SRCS:%.md=%.html)

all: ${HTMLS}

%.html: %.md
	@docker container run --rm -it -u ${CURRENT_UID}:${CURRENT_GID} -v $(CURDIR):/data jfroche/docker-markdown $<
	@mv $(@:.html=.md.html) $@

clean:
	@rm -f ${HTMLS}

installdirs:
	@mkdir -p $(INSTALL_PATH)

uninstall:
	@rm -rf $(INSTALL_PATH)

install: uninstall installdirs
	@mv *.html $(INSTALL_PATH)/
