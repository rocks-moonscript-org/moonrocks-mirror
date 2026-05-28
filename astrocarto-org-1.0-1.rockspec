package = "astrocarto-org"
version = "1.0-1"

source = {
  url = "https://astrocarto.org"
}

description = {
  summary = "Free AI-powered astrocartography calculator.",
  detailed = [[
    Astrocarto.org is a free astrocartography calculator powered by AI.
    Generate precise planetary lines, relocation insights, and instant
    map interpretations using Swiss Ephemeris. No signup required.
  ]],
  homepage = "https://astrocarto.org",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "none"
}
