package = "testshazam"
version = "0.0.1-5"
source = {
    url = "file://./rock.tar.gz",
    dir = "rock",  -- يُحدد أن الملفات موجودة داخل مجلد "rock"
    -- يمكنك إضافة md5 إذا رغبت
    -- md5 = "ضع_قيمة_md5_هنا"
}
description = {
    summary = "مكتبة ديناميكية للعمل مع Lua",
    detailed = "مكتبة C تعمل مع Lua.",
    homepage = "https://example.com",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "none",  -- لا توجد عملية بناء
    install = {
        lib = {
            FusionLib = "libFusionLib.so"  -- بالنسبة إلى الدليل "rock" (source.dir)
        }
    },
}
