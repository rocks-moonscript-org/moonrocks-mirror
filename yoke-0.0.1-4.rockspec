package = "yoke"
version = "0.0.1-4"

source = {
   url = "file:///home/zen/lib/yoke/rocks/yoke.zip"
}

description = {
  homepage = "https://yokerp.com",
  license = "GNU",
}

dependencies = {
  "lua >= 5.3,< 5.5",
  "lsqlite3 >= 0.9.5-1",
  "luautf8 >= 0.1.3",
  "luasocket >= 3.0rc1-2",
  "mimetypes >= 1.0.0",
}

build = {
  type = "builtin",
  modules = {
    ["yoke.yoke.site.conf"] = "yoke/yoke/site/conf.lua",
    ["yoke.yoke.site.main"] = "yoke/yoke/site/main.lua",
    ["yoke.yoke.site.page"] = "yoke/yoke/site/page.lua",
    ["yoke.yoke.site.snap"] = "yoke/yoke/site/snap.lua",

    ["yoke.yoke.site.form.base"] = "yoke/yoke/site/form/base.lua",
    ["yoke.yoke.site.form.card"] = "yoke/yoke/site/form/card.lua",
    ["yoke.yoke.site.form.list"] = "yoke/yoke/site/form/list.lua",
    ["yoke.yoke.site.form.view"] = "yoke/yoke/site/form/view.lua",
    ["yoke.yoke.site.form.edit"] = "yoke/yoke/site/form/edit.lua",
    ["yoke.yoke.site.form.save"] = "yoke/yoke/site/form/save.lua",

    ["yoke.yoke.site.apps.page.conf"] = "yoke/yoke/site/apps/page/conf.lua",
    ["yoke.yoke.site.apps.page.mods.bases"] = "yoke/yoke/site/apps/page/mods/bases.lua",
    ["yoke.yoke.site.apps.page.mods.forms"] = "yoke/yoke/site/apps/page/mods/forms.lua",
    ["yoke.yoke.site.apps.page.mods.pages"] = "yoke/yoke/site/apps/page/mods/pages.lua",
    ["yoke.yoke.site.apps.page.lang.en"] = "yoke/yoke/site/apps/page/lang/en.lua",
    ["yoke.yoke.site.apps.page.lang.ua"] = "yoke/yoke/site/apps/page/lang/uk.lua",
    ["yoke.yoke.site.apps.page.html.edit"] = "yoke/yoke/site/apps/page/html/edit.lua",

    ["yoke.yoke.site.apps.user.mods.users"] = "yoke/yoke/site/apps/user/mods/users.lua",
    ["yoke.yoke.site.apps.user.mods.login"] = "yoke/yoke/site/apps/user/mods/login.lua",
    ["yoke.yoke.site.apps.user.mods.metas"] = "yoke/yoke/site/apps/user/mods/metas.lua",
    ["yoke.yoke.site.apps.user.mods.roles"] = "yoke/yoke/site/apps/user/mods/roles.lua",
    ["yoke.yoke.site.apps.user.conf"] = "yoke/yoke/site/apps/user/conf.lua",

    ["yoke.yoke.site.apps.base.mods.currencies"] = "yoke/yoke/site/apps/base/mods/currencies.lua",
    ["yoke.yoke.site.apps.base.conf"] = "yoke/yoke/site/apps/base/conf.lua",

    ["yoke.yoke.snap.http.init"] = "yoke/yoke/snap/http/init.lua",
    ["yoke.yoke.snap.http.request"] = "yoke/yoke/snap/http/request.lua",
    ["yoke.yoke.snap.http.response"] = "yoke/yoke/snap/http/response.lua",
    ["yoke.yoke.snap.http.status"] = "yoke/yoke/snap/http/status.lua",

    ["yoke.yoke.snap.term.menu"] = "yoke/yoke/snap/term/menu.lua",
    ["yoke.yoke.snap.term.init"] = "yoke/yoke/snap/term/init.lua",

    ["yoke.yoke.snap.yard.request"] = "yoke/yoke/snap/yard/request.lua",
    ["yoke.yoke.snap.yard.response"] = "yoke/yoke/snap/yard/response.lua",
    ["yoke.yoke.snap.yard.init"] = "yoke/yoke/snap/yard/init.lua",

    ["yoke.yoke.snap.init"] = "yoke/yoke/snap/init.lua",
    ["yoke.yoke.snap.util"] = "yoke/yoke/snap/util.lua",

    ["yoke.snap.class"] = "yoke/snap/class.lua",
    ["yoke.snap.md5"] = "yoke/snap/md5.lua",
    ["yoke.snap.sha256"] = "yoke/snap/sha256.lua",

    ["yoke.init"] = "yoke/init.lua"
  },
  install = {
    lua = {
      ["yoke.yoke.site.face.js.yoke"] = "yoke/yoke/site/face/js/yoke.js",
      ["yoke.yoke.site.face.js.popup"] = "yoke/yoke/site/face/js/popup.js",
      ["yoke.yoke.site.face.js.html5shiv"] = "yoke/yoke/site/face/js/html5shiv.js",
      ["yoke.yoke.site.face.js.jquery"] = "yoke/yoke/site/face/js/jquery.js",
      ["yoke.yoke.site.face.js.jquery-history"] = "yoke/yoke/site/face/js/jquery.history.js",
      ["yoke.yoke.site.face.js.jodit"] = "yoke/yoke/site/face/js/jodit.js",

      ["yoke.yoke.site.face.js.date.date"] = "yoke/yoke/site/face/js/date/date.js",
      ["yoke.yoke.site.face.js.date.en"] = "yoke/yoke/site/face/js/date/en.js",
      ["yoke.yoke.site.face.js.date.uk"] = "yoke/yoke/site/face/js/date/uk.js",

      ["yoke.yoke.site.face.img.menuarrow"] = "yoke/yoke/site/face/img/menuarrow.gif",
      ["yoke.yoke.site.face.img.print"] = "yoke/yoke/site/face/img/print.gif",
      ["yoke.yoke.site.face.img.board"] = "yoke/yoke/site/face/img/board.png",
      ["yoke.yoke.site.face.img.boards"] = "yoke/yoke/site/face/img/board.jpeg",
      ["yoke.yoke.site.face.img.logo"] = "yoke/yoke/site/face/img/logo.png",
      ["yoke.yoke.site.face.img.plus"] = "yoke/yoke/site/face/img/plus.png",

      ["yoke.yoke.site.face.img.cam.front"] = "yoke/yoke/site/face/img/cam/front.svg",
      ["yoke.yoke.site.face.img.cam.rear"] = "yoke/yoke/site/face/img/cam/rear.svg",
      ["yoke.yoke.site.face.img.cam.full"] = "yoke/yoke/site/face/img/cam/full.svg",
      ["yoke.yoke.site.face.img.cam.fullexit"] = "yoke/yoke/site/face/img/cam/fullexit.svg",
      ["yoke.yoke.site.face.img.cam.photo"] = "yoke/yoke/site/face/img/cam/photo.svg",

      ["yoke.yoke.site.face.css.date"] = "yoke/yoke/site/face/css/date.css",
      ["yoke.yoke.site.face.css.jodit"] = "yoke/yoke/site/face/css/jodit.css",
      ["yoke.yoke.site.face.css.yoke"] = "yoke/yoke/site/face/css/yoke.css",
      ["yoke.yoke.site.face.favicon"] = "yoke/yoke/site/face/favicon.png",
      ["yoke.data.out.dummy"] = "yoke/data/out/dummy"
    },
    bin = {
      yoke = 'yoke/init.lua'
    },
  }
}
