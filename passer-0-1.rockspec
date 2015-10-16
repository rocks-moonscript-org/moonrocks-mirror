package = "passer"
version = "0-1"

source = {
  url = "git://github.com/williford/passer.torch.git"
}

description = {
  summary = "Converts GPU torch models to CPU equivalent versions",
  homepage = "https://github.com/williford/passer.torch",
  license = "MIT"
}

dependencies = {
  "torch",
  "nn"
}

build = {
  type = "builtin",
  modules = {
    passer = "passer.torch"
  }
}
