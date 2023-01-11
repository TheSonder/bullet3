	project "LinearMath"

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
		"TaskScheduler/*.cpp",
		"TaskScheduler/*.h"
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