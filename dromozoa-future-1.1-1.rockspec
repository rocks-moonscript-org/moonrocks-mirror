package = "dromozoa-future"
version = "1.1-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-future/archive/v1.1.tar.gz";
  file = "dromozoa-future-1.1.tar.gz";
}
description = {
  summary = "Toolkit for non-blocking I/O programming";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-future/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
dependencies = {
  "dromozoa-commons";
  "dromozoa-curl";
  "dromozoa-dyld";
  "dromozoa-unix";
  "dromozoa-zmq";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.future.async_futures"] = "dromozoa/future/async_futures.lua";
    ["dromozoa.future.async_state"] = "dromozoa/future/async_state.lua";
    ["dromozoa.future.create_thread"] = "dromozoa/future/create_thread.lua";
    ["dromozoa.future.curl_futures"] = "dromozoa/future/curl_futures.lua";
    ["dromozoa.future.curl_handler"] = "dromozoa/future/curl_handler.lua";
    ["dromozoa.future.curl_handler_state"] = "dromozoa/future/curl_handler_state.lua";
    ["dromozoa.future.curl_reader"] = "dromozoa/future/curl_reader.lua";
    ["dromozoa.future.curl_reader_state"] = "dromozoa/future/curl_reader_state.lua";
    ["dromozoa.future.curl_service"] = "dromozoa/future/curl_service.lua";
    ["dromozoa.future.deferred_state"] = "dromozoa/future/deferred_state.lua";
    ["dromozoa.future.future"] = "dromozoa/future/future.lua";
    ["dromozoa.future.future_service"] = "dromozoa/future/future_service.lua";
    ["dromozoa.future.futures"] = "dromozoa/future/futures.lua";
    ["dromozoa.future.io_futures"] = "dromozoa/future/io_futures.lua";
    ["dromozoa.future.io_handler"] = "dromozoa/future/io_handler.lua";
    ["dromozoa.future.io_handler_state"] = "dromozoa/future/io_handler_state.lua";
    ["dromozoa.future.io_service"] = "dromozoa/future/io_service.lua";
    ["dromozoa.future.latch_state"] = "dromozoa/future/latch_state.lua";
    ["dromozoa.future.make_ready_future"] = "dromozoa/future/make_ready_future.lua";
    ["dromozoa.future.never_return"] = "dromozoa/future/never_return.lua";
    ["dromozoa.future.promise"] = "dromozoa/future/promise.lua";
    ["dromozoa.future.reader"] = "dromozoa/future/reader.lua";
    ["dromozoa.future.reader_buffer"] = "dromozoa/future/reader_buffer.lua";
    ["dromozoa.future.reader_source"] = "dromozoa/future/reader_source.lua";
    ["dromozoa.future.ready_state"] = "dromozoa/future/ready_state.lua";
    ["dromozoa.future.resume_thread"] = "dromozoa/future/resume_thread.lua";
    ["dromozoa.future.selfpipe_futures"] = "dromozoa/future/selfpipe_futures.lua";
    ["dromozoa.future.share_state"] = "dromozoa/future/share_state.lua";
    ["dromozoa.future.shared_future"] = "dromozoa/future/shared_future.lua";
    ["dromozoa.future.shared_reader"] = "dromozoa/future/shared_reader.lua";
    ["dromozoa.future.shared_state"] = "dromozoa/future/shared_state.lua";
    ["dromozoa.future.state"] = "dromozoa/future/state.lua";
    ["dromozoa.future.timer_service"] = "dromozoa/future/timer_service.lua";
    ["dromozoa.future.when_any_table_state"] = "dromozoa/future/when_any_table_state.lua";
    ["dromozoa.future.writer"] = "dromozoa/future/writer.lua";
    ["dromozoa.future.zmq_futures"] = "dromozoa/future/zmq_futures.lua";
  };
}
