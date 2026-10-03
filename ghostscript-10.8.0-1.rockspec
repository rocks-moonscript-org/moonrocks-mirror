local git_ref = "ghostpdl-10.08.0"
local modrev = git_ref:gsub("^ghostpdl%-", ""):gsub('0+(%d)', '%1')
local specrev = '1'

rockspec_format = '3.0'
package = "ghostscript"
version = modrev .. '-' .. specrev

description = {
   summary = "Ghostscript packaged as a Lua rock",
   detailed =
   [[Ghostscript is a suite of software for processing PostScript and PDF files. This package provides the Ghostscript binary as a Lua rock.]],
   homepage = "https://www.ghostscript.com/",
   license = "AGPL-3.0"
}

local repo_url = 'https://github.com/ArtifexSoftware/ghostpdl'
source = {
   url = repo_url .. '/archive/' .. git_ref .. '.zip',
   dir = 'ghostpdl-' .. git_ref,
}

dependencies = {
   "lua >= 5.1"
}
build = {
   type = "autotools",
  patches = {
    ["fix-timezone.diff"] = [[
--- old/base/gp_unix.c
+++ new/base/gp_unix.c
@@ -159,9 +159,9 @@ gp_get_realtime(long *pdt)
     }
 #else /* All other systems */
     {
-        struct timezone tzp;
+        // struct timezone tzp;
 
-        if (gettimeofday(&tp, &tzp) == -1) {
+        if (gettimeofday(&tp, NULL) == -1) {
             lprintf("Ghostscript: gettimeofday failed!\n");
             tp.tv_sec = tp.tv_usec = 0;
         }
]],
  },
   variables = {
      autotools = {
         CFLAGS = "-O2 -fPIC -std=c99 -D_GNU_SOURCE",
      }
   },
   configure_command = "./autogen.sh",
   configure_options = {
      "--disable-cups",
      "--without-x",
      "--disable-gtk",
      "--disable-fontconfig",
      "--disable-dbus",
      "--disable-contrib",
      "--without-tesseract",
      "--without-ijs",
      "--with-drivers=PS,PNG,JPEG,TIFF,PBM"
   }
}
