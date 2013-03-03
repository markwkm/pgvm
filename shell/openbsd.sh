#!/bin/sh

(cd /usr/ports/devel/git && make install) || exit 1
(cd /usr/ports/misc/screen && make install) || exit 1
(cd /usr/ports/devel/cscope && make install) || exit 1
(cd /usr/ports/devel/bison && make install) || exit 1
(cd /usr/ports/devel/flex && make install) || exit 1
(cd /usr/ports/textproc/openjade && make install) || exit 1
(cd /usr/ports/textproc/docbook && make install) || exit 1
(cd /usr/ports/textproc/libxslt && make install) || exit 1

