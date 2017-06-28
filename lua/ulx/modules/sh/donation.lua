local CATEGORY_NAME = "Keaton's EZ Titles"

local gamemode_error="The current gamemode is not trouble in terrorist town"


------------------------------ Title ---------------------------------
function ulx.title( calling_ply, target_plys, title )
    
    for i=1, #target_plys do
		target_plys[ i ]:SetPData( "customtitle", title )
    end
    
ulx.fancyLogAdmin( calling_ply, "#A set #T's title to #s.", target_plys, title )
end
local title = ulx.command( CATEGORY_NAME, "ulx title", ulx.title, "!title" )
title:addParam{ type=ULib.cmds.PlayersArg }
title:addParam{ type=ULib.cmds.StringArg }
title:defaultAccess( ULib.ACCESS_SUPERADMIN )
title:help( "Sets the target's custom title." )
-----------------------------------------------End-------------------------------------------------


------------------------------ TitleColor ---------------------------------
function ulx.titlecolor( calling_ply, target_plys, titlecolor )
    
    for i=1, #target_plys do
		target_plys[ i ]:SetPData( "customtitlecolor", titlecolor )
    end
    
ulx.fancyLogAdmin( calling_ply, "#A set #T's titlecolor to #s.", target_plys, titlecolor )
end
local titlecolor = ulx.command( CATEGORY_NAME, "ulx titlecolor", ulx.titlecolor, "!titlecolor" )
titlecolor:addParam{ type=ULib.cmds.PlayersArg }
titlecolor:addParam{ type=ULib.cmds.StringArg }
titlecolor:defaultAccess( ULib.ACCESS_SUPERADMIN )
titlecolor:help( "ABSOLUTELY MUST FOLLOW FORMAT: R G B A" )
-----------------------------------------------End-------------------------------------------------

