package = "dromozoa-calendar"
version = "1.4-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-calendar/archive/v1.4.tar.gz";
  file = "dromozoa-calendar-1.4.tar.gz";
}
description = {
  summary = "Date functions and Japanese calendar";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-calendar/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.calendar"] = "dromozoa/calendar.lua";
    ["dromozoa.calendar.date_to_jdn"] = "dromozoa/calendar/date_to_jdn.lua";
    ["dromozoa.calendar.holidays"] = "dromozoa/calendar/holidays.lua";
    ["dromozoa.calendar.is_holiday"] = "dromozoa/calendar/is_holiday.lua";
    ["dromozoa.calendar.jdn_to_date"] = "dromozoa/calendar/jdn_to_date.lua";
  };
}
