package = "testshazam"
version = "0.0.1-2"
source = {
    url = "file://./rock/",  -- استخدم المسار المحلي للمكتبة
}
description = {
    summary = "مكتبة ديناميكية للعمل مع Lua",
    detailed = "مكتبة C تعمل مع Lua.",
    homepage = "https://example.com",  -- رابط الموقع (اختياري)
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",  -- تحديد الاعتماديات المطلوبة
}
build = {
    type = "builtin",
    modules = {
        ["FusionLib"] = "libFusionLib.so",  -- المسار الصحيح للمكتبة .so
    },
}

