AddCSLuaFile()
require( "cfclogger" )

CFCTime = {}

CFCTime.Logger = CFCLogger( "CFCTime" )
CFCTime.Logger:on( "error" ):call( error )

include( "sh_config.lua" )
include( "sh_util.lua" )

if SERVER then
    include( "server/sv_init.lua" )
    AddCSLuaFile( "client/cl_init.lua" )
    AddCSLuaFile( "shared/sh_init.lua" )
    AddCSLuaFile( "sh_config.lua" )
    AddCSLuaFile( "sh_util.lua" )

    CFCTime.addCSModuleFiles( "client" )
    CFCTime.addCSModuleFiles( "shared" )
else
    include( "client/cl_init.lua" )
end

include( "shared/sh_init.lua" )

CFCTime.Logger:info( "Loaded all modules!" )
