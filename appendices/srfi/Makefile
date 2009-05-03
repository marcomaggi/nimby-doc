# Makefile --
#

MAKEINFO		= makeinfo
MAKEINFO_INFO_FLAGS	= --no-split
MAKEINFO_HTML_FLAGS	= --no-split --html

## ------------------------------------------------------------

DEPS		= $(wildcard *.texiinc)

SOURCES		= srfi.texi
TARGETS		= $(SOURCES:.texi=.info) $(SOURCES:.texi=.html)

CLEANFILES	= $(TARGETS)

## ------------------------------------------------------------

.PHONY: all clean

all: $(TARGETS)

clean:
	-$(RM) $(CLEANFILES)

%.info: %.texi $(DEPS)
	$(MAKEINFO) $(MAKEINFO_INFO_FLAGS) -o $(@) $(<)

%.html: %.texi $(DEPS)
	$(MAKEINFO) $(MAKEINFO_HTML_FLAGS) -o $(@) $(<)


### end of file
