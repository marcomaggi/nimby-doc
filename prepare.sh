# prepare.sh --

set -x

(cd .. && sh ./autogen.sh)

prefix=/usr/local

../configure \
    --config-cache                              \
    --cache-file=../config.cache                \
    --prefix="${prefix}"                        \
    "$@"

### end of file
