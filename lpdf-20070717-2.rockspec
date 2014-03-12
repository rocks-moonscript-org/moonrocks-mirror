package = "lpdf"
version = "20070717-2"
source = {
	url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.1/lpdf.tar.gz",
	md5 = "85c3ebe49312bf316cd633c165df8446",
	dir = "pdf",
}
description = {
	summary = "A library for generating PDF documents based on PDFlib",
	homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lpdf",
	license = "Public Domain",
}
dependencies = {
	"lua >= 5.1"
}
external_dependencies = {
	PDFLIB = {
		header = "pdflib.h"
	}
}
build = {
	type = "builtin",
	modules = {
		pdf = {
			sources = {"lpdf.c",},
			libraries = {"pdflib"},
			incdirs = {"$(PDFLIB_INCDIR)"},
			libdirs = {"$(PDFLIB_LIBDIR)"},
		},
	},
}
