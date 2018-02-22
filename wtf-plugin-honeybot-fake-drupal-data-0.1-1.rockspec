package = "wtf-plugin-honeybot-fake-drupal-data"
version = "0.1-1"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-fake-drupal",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/wtf-plugin-honeybot-fake-drupal",
   license = "MIT"
}
dependencies = {}
build = {
   type = "command",
   build_command = "WTFBASE=/usr/local/share/wtf/data/;PACKAGEPATH=honeybot/fake/drupal;test -d $WTFBASE$PACKAGEPATH || mkdir -p $WTFBASE$PACKAGEPATH;cp -R _data/* $WTFBASE$PACKAGEPATH"   
}
