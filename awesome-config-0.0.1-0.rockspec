rockspec_format = "3.0"
package = "awesome-config"
version = "0.0.1-0"

source = {
  url = "git+https://github.com/cabra-lat/awesome-config",
  tag = "v0.0.1"
}

description = {
  homepage = "https://github.com/cabra-lat/awesome-config",
  summary = [[cabra.lat's AwesomeWM configuration]],
  detailed = [=[This is my personal AwesomeWM configuration.]=],
  license = "MIT",
  labels = {
    "awesome"
  }
}

dependencies = {
  --"awesome >= 4.0",
  "lua >= 5.3",
  "lain",
  "cabra-lat/awesome-freedesktop"
}
