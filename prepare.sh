# prepare.sh --

set -x

(cd ..
    if test \
        configure -ot prepare.sh                                -o \
        configure -ot configure.ac                              -o \
        configure -ot aclocal.m4                                -o \
        configure -ot infrastructure/develstuff.autoconf        -o \
        configure -ot configuration/nausicaa.autoconf
        then
        autoconf
    fi)

../configure \
    --config-cache                              \
    --with-abi=local-slackware                  \
    --enable-use-sudo                           \
    "$@"

### end of file
