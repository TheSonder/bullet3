	project "BulletDynamics"
	kind "StaticLib"
    staticruntime "off"



	includedirs {
		"..",
	}
    if os.is("Linux") then
        buildoptions{"-fPIC"}
    end
	files {
		"Dynamics/*.cpp",
                "Dynamics/*.h",
                "ConstraintSolver/*.cpp",
                "ConstraintSolver/*.h",
                "Featherstone/*.cpp",
                "Featherstone/*.h",
                "MLCPSolvers/*.cpp",
                "MLCPSolvers/*.h",
                "Vehicle/*.cpp",
                "Vehicle/*.h",
                "Character/*.cpp",
                "Character/*.h"

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