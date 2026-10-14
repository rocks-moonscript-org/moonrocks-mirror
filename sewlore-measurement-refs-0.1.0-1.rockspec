--[[
MIT License

Copyright (c) 2026 Sewlore

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

]]
rockspec_format = "3.0"
package = "sewlore-measurement-refs"
version = "0.1.0-1"
source = {
    url = "https://raw.githubusercontent.com/gokimedia/sewlore-sewing-tools/0a2e73dafa96b0fe7829e1477e5c148c8f4cb304/packages/lua/sewlore-measurement-refs/src/sewlore/measurement_refs.lua",
    file = "measurement_refs.lua",
    dir = ".",
    md5 = "b5ce6e9bfef7c49bbebccdf959f786c7",
}
description = {
    summary = "Validate named sewing measurement endpoints and comparable straight spans",
    detailed = [[
        Pure Lua validation of explicit sample, span, direction, line role,
        state, units and two-point coordinates. Normalizes mm/cm/in inputs
        and compares matching reference pairs with signed length change.
        The measurements must name the same sample, span, direction and
        line role before comparing a fictional prewash/postwash pair.
        Full source, usage examples and behavior tests are available at
        https://github.com/gokimedia/sewlore-sewing-tools/tree/0a2e73dafa96b0fe7829e1477e5c148c8f4cb304/packages/lua/sewlore-measurement-refs
        No network, file I/O, physical material certification or telemetry.
    ]],
    homepage = "https://sewlore.com/pages/fabric-measurement-methods-guide",
    license = "MIT",
    labels = { "math", "geometry", "validation" },
}
dependencies = { "lua >= 5.1, < 5.6" }
build = {
    type = "builtin",
    modules = { ["sewlore.measurement_refs"] = "measurement_refs.lua" },
}
