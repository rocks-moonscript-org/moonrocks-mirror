package = "ads1015"
version = "0.1.0-1"
source = {
   url = "https://github.com/BixData/lua-ads1015/archive/0.1.0-1.tar.gz",
   dir = "ads1015-0.1.0-1"
}
description = {
   summary = "ADS1015 4-channel 12-bit ADC+PGA I²C sensor driver",
   detailed = [[
     The ADS1015 device is a precision, low-power, 12-bit, I²C-compatible,
     analog-to-digital converter (ADC) offered in an ultra-small, leadless,
     X2QFN-10 package, and a VSSOP-10 package. The ADS1015 incorporates a
     low-drift voltage reference and an oscillator. The ADS1015 also incorporates
     a programmable gain amplifier (PGA) and a digital comparator. These features,
     along with a wide operating supply range, make the ADS1015 well suited for
     power- and space-constrained sensor measurement applications. 
   ]],
   homepage = "https://github.com/BixData/lua-ads1015",
   maintainer = "David Rauschenbach",
   license = "MIT"
}
dependencies = {
   "bit32 <= 5.3.2-0",
   "lua >= 5.1, < 5.4",
   "lua-periphery >= 1.1.1",
   "luasocket >= 2.0"
}
build = {
   type = "builtin",
   modules = {
      ads1015 = "src/ads1015.lua"
   }
}
