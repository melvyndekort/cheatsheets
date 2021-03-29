INSTALL_PATH=~/docs
CURRENT_UID := $(shell id -u)
CURRENT_GID := $(shell id -g)

.DEFAULT_GOAL := all
.PHONY: docker clean installdirs install uninstall

SRCS := $(wildcard *.md)
HTMLS := $(SRCS:%.md=%.html)

all: docker ${HTMLS}

docker:
	@docker image build -q -t docker-to-html docker/

%.html: %.md
	@docker container run --rm -it -u ${CURRENT_UID}:${CURRENT_GID} -v $(CURDIR):/data docker-to-html -o $@ $<

clean:
	@rm -f ${HTMLS}

installdirs:
	@mkdir -p $(INSTALL_PATH)

uninstall:
	@rm -rf $(INSTALL_PATH)

install: uninstall installdirs
	@mv *.html $(INSTALL_PATH)/
