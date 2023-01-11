	project "Bullet3Dynamics"

	language "C++"
				
	kind "StaticLib"
    staticruntime "off"


	includedirs {
		".."
	}		
	
    if os.is("Linux") then
        buildoptions{"-fPIC"}
    end

	files {
		"**.cpp",
		"**.h"
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