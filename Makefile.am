## Process this file with automake to produce Makefile.in

AUTOMAKE_OPTIONS	= foreign
EXTRA_DIST		= README
AM_MAKEINFOFLAGS	= --no-split -I $(srcdir)/appendices/srfi

## --------------------------------------------------------------------

info_TEXINFOS	= \
	src/boehm-gc.texi	\
	src/expat.texi		\
	src/igraph.texi		\
	src/ikarus.texi		\
	src/neko.texi		\
	src/r6rs.texi		\
	src/r6rs-lib.texi	\
	src/ypsilon.texi	\
	src/srfi.texi

## --------------------------------------------------------------------

EXTRA_DIST		+= \
	appendices/uuid.texi				\
	appendices/zlib.texi				\
	appendices/bzlib.texi				\
	appendices/ex.texi				\
	appendices/sa.texi

src_srfi_TEXINFOS	= \
	appendices/srfi/index.texi			\
	appendices/srfi/texinfo-macros.texi		\
	\
	appendices/srfi/and-let-star.texi		\
	appendices/srfi/args-fold.texi			\
	appendices/srfi/case-lambda.texi		\
	appendices/srfi/cond-expand.texi		\
	appendices/srfi/eager-comp.texi			\
	appendices/srfi/environment-variables.texi	\
	appendices/srfi/error-reporting.texi		\
	appendices/srfi/general-cond.texi		\
	appendices/srfi/let-values.texi			\
	appendices/srfi/lightweight-testing.texi	\
	appendices/srfi/list.texi			\
	appendices/srfi/parameters.texi			\
	appendices/srfi/random.texi			\
	appendices/srfi/receive.texi			\
	appendices/srfi/records.texi			\
	appendices/srfi/rec.texi			\
	appendices/srfi/shared-structures.texi		\
	appendices/srfi/specialize-procedures.texi	\
	appendices/srfi/streams.texi			\
	appendices/srfi/string-ports.texi		\
	appendices/srfi/strings.texi			\
	appendices/srfi/time.texi			\
	appendices/srfi/vector.texi

### end of file
