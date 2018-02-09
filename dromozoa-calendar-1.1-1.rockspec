package = "dromozoa-calendar"
version = "1.1-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-calendar/archive/v1.1.tar.gz";
  file = "dromozoa-calendar-1.1.tar.gz";
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
    ["dromozoa.calendar.dataset.holidays"] = "dromozoa/calendar/dataset/holidays.lua";
    ["dromozoa.calendar.dataset.holidays2006"] = "dromozoa/calendar/dataset/holidays2006.lua";
    ["dromozoa.calendar.dataset.holidays2007"] = "dromozoa/calendar/dataset/holidays2007.lua";
    ["dromozoa.calendar.dataset.holidays2008"] = "dromozoa/calendar/dataset/holidays2008.lua";
    ["dromozoa.calendar.dataset.holidays2009"] = "dromozoa/calendar/dataset/holidays2009.lua";
    ["dromozoa.calendar.dataset.holidays2010"] = "dromozoa/calendar/dataset/holidays2010.lua";
    ["dromozoa.calendar.dataset.holidays2011"] = "dromozoa/calendar/dataset/holidays2011.lua";
    ["dromozoa.calendar.dataset.holidays2012"] = "dromozoa/calendar/dataset/holidays2012.lua";
    ["dromozoa.calendar.dataset.holidays2013"] = "dromozoa/calendar/dataset/holidays2013.lua";
    ["dromozoa.calendar.dataset.holidays2014"] = "dromozoa/calendar/dataset/holidays2014.lua";
    ["dromozoa.calendar.dataset.holidays2015"] = "dromozoa/calendar/dataset/holidays2015.lua";
    ["dromozoa.calendar.dataset.holidays2016"] = "dromozoa/calendar/dataset/holidays2016.lua";
    ["dromozoa.calendar.dataset.holidays2017"] = "dromozoa/calendar/dataset/holidays2017.lua";
    ["dromozoa.calendar.dataset.holidays2018"] = "dromozoa/calendar/dataset/holidays2018.lua";
    ["dromozoa.calendar.dataset.holidays2019"] = "dromozoa/calendar/dataset/holidays2019.lua";
    ["dromozoa.calendar.date_to_jdn"] = "dromozoa/calendar/date_to_jdn.lua";
    ["dromozoa.calendar.is_holiday"] = "dromozoa/calendar/is_holiday.lua";
    ["dromozoa.calendar.jdn_to_date"] = "dromozoa/calendar/jdn_to_date.lua";
  };
}
