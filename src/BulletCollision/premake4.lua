	project "BulletCollision"

	kind "StaticLib"
    staticruntime "off"

    if os.is("Linux") then
        buildoptions{"-fPIC"}
    end
	includedirs {
		"..",
	}
	files {
		"*.cpp",
		"*.h",
		"BroadphaseCollision/*.cpp",
		"BroadphaseCollision/*.h",
		"CollisionDispatch/*.cpp",
                "CollisionDispatch/*.h",
		"CollisionShapes/*.cpp",
		"CollisionShapes/*.h",
		"Gimpact/*.cpp",
		"Gimpact/*.h",
		"NarrowPhaseCollision/*.cpp",
		"NarrowPhaseCollision/*.h",
	}

	filter "configurations:Debug" 
        runtime "Debug"
        symbols "on"
    
    filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"