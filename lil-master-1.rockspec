rockspec_format = "3.0"
package = "LIL"
version = "master-1"
source = {
	url = "git+https://codeberg.org/nazrin/lil"
}
description = {
	summary = "A capable and lightweight image processing library for Lua designed to be comfortable to use",
	homepage = "https://codeberg.org/nazrin/lil",
	license = "MPL-2.0",
	issues_url = "https://codeberg.org/nazrin/lil/issues",
	labels = { "c", "image" }
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	install = {
		lua = {
			["lil-aux"] = "./lil-aux.lua",
		}
	},
	modules = {
		lil = {
			defines = {
				"LIL_IMG_COMPRESSION_QUALITY=1.0f", "LIL_IMG_COMPRESSION_SPEED=0.8f", "LIL_MAX_IMAGE=536870912",
				"LIL_USE_PNG", "LIL_USE_JPEG", "LIL_USE_WEBP", "LIL_USE_FARBFELD", "LIL_USE_FREETYPE"
			},
			libraries = { "png16", "turbojpeg", "webp", "freetype" },
			sources = {
				'src/base.c',
				'src/comp.c',
				'src/farbfeld.c',
				'src/img.c',
				'src/imgDraw.c',
				'src/imgFilter.c',
				'src/jpg.c',
				'src/main.c',
				'src/png.c',
				'src/text.c',
				'src/util.c',
				'src/webp.c',
			}
		}
	},
	platforms = {
		unix = {
			modules = {
				lil = {
					incdirs = { "/usr/include/freetype2" },
				}
			}
		}
	}
}

