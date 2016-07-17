package = "dromozoa-socks"
version = "1.3-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-socks/archive/v1.3.tar.gz";
  file = "dromozoa-socks-1.3.tar.gz";
}
description = {
  summary = "Toolkit for network and I/O programming";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-socks/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-commons";
  "dromozoa-dyld";
  "dromozoa-unix";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.socks.async_state"] = "dromozoa/socks/async_state.lua";
    ["dromozoa.socks.create_thread"] = "dromozoa/socks/create_thread.lua";
    ["dromozoa.socks.crypt_apache_sha1"] = "dromozoa/socks/crypt_apache_sha1.lua";
    ["dromozoa.socks.crypt_sha256"] = "dromozoa/socks/crypt_sha256.lua";
    ["dromozoa.socks.deferred_state"] = "dromozoa/socks/deferred_state.lua";
    ["dromozoa.socks.future"] = "dromozoa/socks/future.lua";
    ["dromozoa.socks.future_service"] = "dromozoa/socks/future_service.lua";
    ["dromozoa.socks.futures"] = "dromozoa/socks/futures.lua";
    ["dromozoa.socks.io_handler"] = "dromozoa/socks/io_handler.lua";
    ["dromozoa.socks.io_handler_state"] = "dromozoa/socks/io_handler_state.lua";
    ["dromozoa.socks.io_service"] = "dromozoa/socks/io_service.lua";
    ["dromozoa.socks.latch_state"] = "dromozoa/socks/latch_state.lua";
    ["dromozoa.socks.make_ready_future"] = "dromozoa/socks/make_ready_future.lua";
    ["dromozoa.socks.multimap"] = "dromozoa/socks/multimap.lua";
    ["dromozoa.socks.multimap_handle"] = "dromozoa/socks/multimap_handle.lua";
    ["dromozoa.socks.never_return"] = "dromozoa/socks/never_return.lua";
    ["dromozoa.socks.pack"] = "dromozoa/socks/pack.lua";
    ["dromozoa.socks.promise"] = "dromozoa/socks/promise.lua";
    ["dromozoa.socks.rb_tree"] = "dromozoa/socks/rb_tree.lua";
    ["dromozoa.socks.reader"] = "dromozoa/socks/reader.lua";
    ["dromozoa.socks.reader_buffer"] = "dromozoa/socks/reader_buffer.lua";
    ["dromozoa.socks.reader_source"] = "dromozoa/socks/reader_source.lua";
    ["dromozoa.socks.ready_state"] = "dromozoa/socks/ready_state.lua";
    ["dromozoa.socks.resume_thread"] = "dromozoa/socks/resume_thread.lua";
    ["dromozoa.socks.shared_future"] = "dromozoa/socks/shared_future.lua";
    ["dromozoa.socks.shared_reader"] = "dromozoa/socks/shared_reader.lua";
    ["dromozoa.socks.shared_state"] = "dromozoa/socks/shared_state.lua";
    ["dromozoa.socks.sharer_state"] = "dromozoa/socks/sharer_state.lua";
    ["dromozoa.socks.state"] = "dromozoa/socks/state.lua";
    ["dromozoa.socks.timer_service"] = "dromozoa/socks/timer_service.lua";
    ["dromozoa.socks.when_any_table_state"] = "dromozoa/socks/when_any_table_state.lua";
    ["dromozoa.socks.writer"] = "dromozoa/socks/writer.lua";
  };
  install = {
    bin = {
      ["dromozoa-socks"] = "dromozoa-socks";
    };
  };
}
