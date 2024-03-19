SHELL := /bin/sh
PACKAGES := $(patsubst %/, %, $(wildcard */))

help:		## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

install:	## install all packages
	$(foreach x,$(PACKAGES),$(call run, stow $(x)))

remove:		## remove all packages
	$(foreach x,$(PACKAGES),$(call run, stow -D $(x)))

.PHONY: help install remove

# Executes the given command, used for the foreach
define run
$(1)

endef
