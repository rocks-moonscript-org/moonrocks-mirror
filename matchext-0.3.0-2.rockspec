package = 'matchext'
version = '0.3.0-2'

source = {}
source.url = 'git://github.com/jcgoble3/lua-matchext.git'
source.tag = 'v0.3.0-2'

description = {}
description.summary = 'Fork of Lua 5.3 pattern matching with added features'
description.homepage = 'https://github.com/jcgoble3/lua-matchext'
description.license = 'MIT/X11'
description.detailed = [[
This is a fork of Lua 5.3's pattern matching functions plus some added features. This was spawned by a proposal on lua-l regarding the first feature below (the balanced string with escape).

Current extra features:

* `%Bxyz`: new token that behaves like `%bxy`, but with a specified escape character. `x` is the starting character, `y` is the escape character, and `z` is the ending character. As with the two arguments to the built-in `%b`, all three arguments are always interpreted literally and never imbue special meaning; this applies even to the pattern-matching escape character `%`.
* Match functions that return their match data in a table instead of multiple return values.
* Escape function that returns a copy of the string with all ASCII punctuation escaped.
* Uses Lua 5.3's pattern-matching library, even on 5.1 and 5.2. This means that some 5.3 features are backported to 5.1 and 5.2; most notably, 5.1 users can use the null character in patterns when using this library, a feature not supported in stock Lua until 5.2.
* More will eventually come (I hope).

Possible features in the future are listed below. The priority is given on a scale of 0 to 10, 10 being most important, but it is a rough approximation only and is in no way a guarantee of what order features will come in or if they will ever come.

* Named captures and backreferences (priority 9)
* UTF-8-aware matching (priority 6)
* Ability to apply quantifiers to parentheses (priority 4)
* `|` for alternation, as in ordinary regex (priority 1)
* Non-capturing parentheses (priority 8, but pointless unless and until support for group quantifiers or alternation is implemented)
* Split function (priority 5)
* ?????
]]

dependencies = {'lua >= 5.1, < 5.4'}

build = {}
build.type = 'builtin'
build.modules = {matchext = 'src/matchext.c'}
