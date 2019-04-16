-- scaffold geniefile for flatGLTF

flatGLTF_script = path.getabsolute(path.getdirectory(_SCRIPT))
flatGLTF_root = path.join(flatGLTF_script, "flatGLTF")

flatGLTF_includedirs = {
	path.join(flatGLTF_script, "config"),
	flatGLTF_root,
}

flatGLTF_libdirs = {}
flatGLTF_links = {}
flatGLTF_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { flatGLTF_includedirs }
	end,

	_add_defines = function()
		defines { flatGLTF_defines }
	end,

	_add_libdirs = function()
		libdirs { flatGLTF_libdirs }
	end,

	_add_external_links = function()
		links { flatGLTF_links }
	end,

	_add_self_links = function()
		links { "flatGLTF" }
	end,

	_create_projects = function()

project "flatGLTF"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		flatGLTF_includedirs,
	}

	defines {}

	files {
		path.join(flatGLTF_script, "config", "**.h"),
		path.join(flatGLTF_root, "**.h"),
		path.join(flatGLTF_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
