package="girvel"
version="1.0-1"
source={
	url="git://github.com/girvel-workshop/lua-girvel",
	tag="1.0"
}
description={
	summary="girvel's own lua framework for pipes, decorators etc",
	homepage="http://girvel.xyz",
	license="MIT"
}
dependencies={
	"lua >= 5.1, < 5.4"
}
build={
	type="builtin",
	modules={
		decorator="decorator.lua",
		exception="exception.lua",
		functional="functional.lua",
		gamera="gamera.lua",
		lambda="lambda.lua",
		limited="limited.lua",
		log="log.lua",
		module="module.lua",
		tesound="tesound.lua",
		toolkit="toolkit.lua",
		vector="vector.lua"
	}
}
