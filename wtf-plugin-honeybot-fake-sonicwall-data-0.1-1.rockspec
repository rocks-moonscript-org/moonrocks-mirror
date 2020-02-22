package = "wtf-plugin-honeybot-fake-sonicwall-data"
version = "0.1-1"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-fake-sonicwall",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/wtf-plugin-honeybot-fake-sonicwall",
   license = "MIT"
}
dependencies = {}
build = {
   type = "command",
   build_command = "WTFBASE=/usr/local/share/wtf/data/;PACKAGEPATH=honeybot/fake/sonicwall;test -d $WTFBASE$PACKAGEPATH || mkdir -p $WTFBASE$PACKAGEPATH;cp -R _data/* $WTFBASE$PACKAGEPATH"   
}