#!/bin/sh

apt-get update || exit 1

apt-get install -y \
		git \
		screen \
		tmux \
		vim \
		emacs \
		cscope \
		exuberant-ctags \
		bison \
		flex \
		make \
		jade \
		docbook \
		docbook-utils \
		xsltproc
