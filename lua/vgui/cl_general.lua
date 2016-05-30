-----------------------
-- Communication Mod --
-----------------------
-- Auteur : Happy	 --
-- Auteur : Rhenar   --
-----------------------
-- Version : 0.1     --
-----------------------

function function_general()

	generalvgui = vgui.Create("DFrame")
	generalvgui:SetSize(ScrW() * 0.4,ScrH() * 0.25)
	generalvgui:Center()
	generalvgui:SetVisible(true)
	generalvgui:MakePopup()
	generalvgui:SetScreenLock(true)
	generalvgui.Paint = function(self,w,h)
		draw.RoundedBox(0,0,0,w,h,Color(0,0,0,150))
	end

end

hook.Add("FunctionGeneralHook","functiongeneral",function_general)