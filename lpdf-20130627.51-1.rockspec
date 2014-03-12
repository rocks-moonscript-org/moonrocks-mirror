package = "lpdf"
version = "20130627.51-1"
source = {
	url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.1/lpdf.tar.gz",
	md5 = "5609098d43ce2793a0f490c049db8244",
	dir = "pdf",
}
description = {
	summary = "A library for generating PDF documents based on PDFlib",
	homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lpdf",
	license = "Public Domain",
}
dependencies = {
	"lua ~> 5.1"
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
			libraries = {"pdf"},
			incdirs = {"$(PDFLIB_INCDIR)"},
			libdirs = {"$(PDFLIB_LIBDIR)"},
		},
	},
}
