package = 'ludent'
version = 'v0.1-1'

source = {
  url = 'git://github.com/lipp/ludent.git',
  tag = 'v0.1'
}

description = {
  summary = 'A naive Lua indenter / formater / beautifier.',
  homepage = 'http://github.com/lipp/ludent',
  license = 'MIT/X11'
}

dependencies = {
  'lua >= 5.1',
}

build = {
  type = 'none',
  install = {
    bin = {
      'ludent',
    }
  }
}
