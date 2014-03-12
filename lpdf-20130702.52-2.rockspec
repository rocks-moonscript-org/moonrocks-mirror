package = "lpdf"
version = "20130702.52-2"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.2/lpdf.tar.gz",
   md5 = "bfc4b2c1f2d537c1a4ad4771a0a3ed16",
   dir = "pdf"
}
description = {
   summary = "A library for generating PDF documents based on PDFlib",
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lpdf",
   license = "Public Domain"
}
dependencies = {
   "lua ~> 5.2"
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
         incdirs = {
            "$(PDFLIB_INCDIR)"
         },
         libdirs = {
            "$(PDFLIB_LIBDIR)"
         },
         libraries = {
            "pdf"
         },
         sources = {
            "lpdf.c"
         }
      }
   }
}
