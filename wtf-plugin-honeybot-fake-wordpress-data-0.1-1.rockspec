package = "wtf-plugin-honeybot-fake-wordpress-data"
version = "0.1-1"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-fake-wordpress",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/wtf-plugin-honeybot-fake-wordpress",
   license = "MIT"
}
dependencies = {}
build = {
   type = "command",
   build_command = "WTFBASE=/usr/local/share/wtf/data/;PACKAGEPATH=honeybot/fake/wordpress;test -d $WTFBASE$PACKAGEPATH || mkdir -p $WTFBASE$PACKAGEPATH;cp -R _data/* $WTFBASE$PACKAGEPATH"   
}
