package = "wtf-plugin-honeybot-fake-owa-data"
version = "0.1-2"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-fake-owa",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/wtf-plugin-honeybot-fake-owa",
   license = "MIT"
}
dependencies = {}
build = {
   type = "command",
   build_command = "WTFBASE=/usr/local/share/wtf/data/;PACKAGEPATH=honeybot/fake/owa;test -d $WTFBASE$PACKAGEPATH || mkdir -p $WTFBASE$PACKAGEPATH;cp -R _data/* $WTFBASE$PACKAGEPATH"   
}