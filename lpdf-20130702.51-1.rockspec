package = "lpdf"
version = "20130702.51-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.1/lpdf.tar.gz",
   md5 = "5bef81b77cd7e8196f24a3d95011d36e",
   dir = "pdf"
}
description = {
   summary = "A library for generating PDF documents based on PDFlib",
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lpdf",
   license = "Public Domain"
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
