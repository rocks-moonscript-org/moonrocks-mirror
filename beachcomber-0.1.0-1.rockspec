package = "beachcomber"
version = "0.1.0-1"

source = {
  url = "https://github.com/NavistAu/beachcomber",
}

description = {
  summary  = "Name reservation — install libbeachcomber instead",
  detailed = [[
    This package exists to prevent name squatting and malicious supply chain
    attacks. The beachcomber client SDK is published as libbeachcomber.
    See https://beachcomber.sh
  ]],
  homepage = "https://beachcomber.sh",
  license  = "MIT",
}

dependencies = {}

build = {
  type = "none",
}
