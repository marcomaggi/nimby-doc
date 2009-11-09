# @configure_input@
#

#page
## --------------------------------------------------------------------
## Global variables.
## --------------------------------------------------------------------

texi_SRCDIR	= $(srcdir)/src

vpath		%.texi		$(texi_SRCDIR)
vpath		%.texiinc	$(texi_SRCDIR)

info_MAKEINFO_FLAGS	= -I $(texi_SRCDIR) --no-split
html_MAKEINFO_FLAGS	= -I $(texi_SRCDIR) --no-split --html
pdf_TEXI2PDF_FLAGS	= -I $(texi_SRCDIR) --dvipdf --tidy --build-dir=$(pdf_BUILDDIR)

## --------------------------------------------------------------------

.PHONY: info html pdf

info : info-all
html : html-all
pdf  : pdf-all

#page
## ------------------------------------------------------------
## Info output.
## ------------------------------------------------------------

$(eval $(call ds-srcdir,info,$(texi_SRCDIR)))
$(eval $(call ds-builddir,info,$(builddir)/info.d))

info_SOURCES	= $(call ds-glob,info,*.texi)
info_TARGETS	= $(call ds-replace-dir,$(info_BUILDDIR),$(info_SOURCES:.texi=.info))
info_INSTLST	= $(info_TARGETS)
info_INSTDIR	= $(pkginfodir)

info_CLEANFILES		= $(info_TARGETS)
info_REALCLEANFILES	= $(info_CLEANFILES)

$(eval $(call ds-module,info,bin,DATA))

$(info_TARGETS) : $(info_BUILDDIR)/%.info : $(info_SRCDIR)/%.texi
	$(MAKEINFO) $(info_MAKEINFO_FLAGS) -o $(@) $(<)

#page
## ------------------------------------------------------------
## HTML output.
## ------------------------------------------------------------

$(eval $(call ds-srcdir,html,$(srcdir)/src))
$(eval $(call ds-builddir,html,$(builddir)/html.d))

html_SOURCES	= $(call ds-glob,html,*.texi)
html_TARGETS	= $(call ds-replace-dir,$(html_BUILDDIR),$(html_SOURCES:.texi=.html))
html_INSTLST	= $(html_TARGETS)
html_INSTDIR	= $(pkghtmldir)

html_CLEANFILES		= $(html_TARGETS)
html_REALCLEANFILES	= $(html_CLEANFILES)

$(eval $(call ds-module,html,bin,DATA))

$(html_TARGETS) : $(html_BUILDDIR)/%.html : $(html_SRCDIR)/%.texi
	$(MAKEINFO) $(html_MAKEINFO_FLAGS) -o $(@) $(<)

#page
## ------------------------------------------------------------
## PDF output.
## ------------------------------------------------------------

$(eval $(call ds-srcdir,pdf,$(srcdir)/src))
$(eval $(call ds-builddir,pdf,$(builddir)/pdf.d))

pdf_SOURCES	= $(call ds-glob,pdf,*.texi)
pdf_TARGETS	= $(call ds-replace-dir,$(pdf_BUILDDIR),$(pdf_SOURCES:.texi=.pdf))
pdf_INSTLST	= $(pdf_TARGETS)
pdf_INSTDIR	= $(pkgpdfdir)

pdf_CLEANFILES		= $(pdf_TARGETS)
pdf_REALCLEANFILES	= $(pdf_CLEANFILES)

$(eval $(call ds-module,pdf,bin,DATA))

$(pdf_TARGETS) : $(pdf_BUILDDIR)/%.pdf : $(pdf_SRCDIR)/%.texi
	$(TEXI2PDF) $(pdf_TEXI2PDF_FLAGS) -o $(@) $(<)


### end of file
# Local Variables:
# mode: makefile-gmake
# End:
