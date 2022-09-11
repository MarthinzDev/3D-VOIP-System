





click = false

function alternancia ()
if click == false then
 voz = getElementData(localPlayer,"tomdevoz")

if voz == "normal" then

 setElementData(localPlayer,"tomdevoz","gritando",true) 
 setElementData(localPlayer,"tomvalue",40,true) 


click = true

elseif voz == "gritando" then

 setElementData(localPlayer,"tomdevoz","susurrando",true) 
setElementData(localPlayer,"tomvalue",2,true) 

click = true

elseif voz == "susurrando" then

 setElementData(localPlayer,"tomdevoz","normal",true) 
setElementData(localPlayer,"tomvalue",15,true) 
click = true

end
else
click = false
end
end
 bindKey ("x", "down", alternancia )  
 
 
function bindTheKeys ( duty )
	bindKey( "x", "down", alternancia ) -- bind the player's fire down and up control
	  for _,v in ipairs(getElementsByType("player")) do 
	setElementData(v,"tomdevoz","normal",true)
	setElementData(v,"tomvalue",15,true) 
end
end
addEventHandler( "onClientResourceStart", resourceRoot,bindTheKeys)


function remotePlayerJoin()
setElementData(localPlayer,"tomdevoz","normal",true)
setElementData(localPlayer,"tomvalue",15,true) 
end
addEventHandler("onClientPlayerJoin", getRootElement(), remotePlayerJoin)


local screenW, screenH = guiGetScreenSize()
local font = dxCreateFont("gfx/Chalet.ttf", 10)
local font2 = dxCreateFont("gfx/2.ttf", 10)
addEventHandler("onClientRender", root,
    function()
	vozvalue = getElementData(localPlayer,"tomdevoz")
	if vozvalue == "normal" then

	     dxDrawText("normal",  screenW * 0.9156, screenH * 0.9833, screenW * 0.9568, screenH * 1.0000, tocolor(27, 231, 0, 255), 1.00, font2, "left", "top", false, false, false, false, false)
   elseif vozvalue == "gritando" then
        dxDrawText("gritando",  screenW * 0.9156, screenH * 0.9833, screenW * 0.9568, screenH * 1.0000, tocolor(223, 1, 1, 255), 1.00, font2, "left", "top", false, false, false, false, false)
      elseif vozvalue == "susurrando" then
	  
	    dxDrawText("susurrando",  screenW * 0.9156, screenH * 0.9833, screenW * 0.9568, screenH * 1.0000, tocolor(213, 206, 10, 255), 1.00, font2, "left", "top", false, false, false, false, false)
	end
end
)





