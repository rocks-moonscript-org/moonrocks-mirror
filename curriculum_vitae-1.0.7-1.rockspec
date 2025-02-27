package = "curriculum_vitae"
version = "1.0.7-1"
source = {
   url = "git+ssh://git@github.com/Its-Just-Nans/curriculum-vitae.git"
}
description = {
   summary = "Generate curriculum vitæ from json using lua and lualatex.",
   detailed = "Generate curriculum vitæ from json using lua and lualatex.",
   homepage = "https://github.com/Its-Just-Nans/curriculum-vitae",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      curriculum_vitae = "curriculum_vitae.lua"
   }
}
