-----------------------
-- Communication Mod --
-----------------------
-- Auteur : Happy	 --
-- Auteur : Rhenar   --
-----------------------
-- Version : 0.1     --
-----------------------

function function_buttonaccept()

	buttonaccept = vgui.Create("DButton", generalvgui)
	buttonaccept:SetSize(ScrW() * 0.05,ScrH() * 0.02)
	buttonaccept:Center()
	buttonaccept:SetText("Envoyer")
	buttonaccept:SetTextColor(Color(255,255,255,220))
	buttonaccept:SetVisible(true)
	buttonaccept:MakePopup()
	buttonaccept.DoClick = function()
		hook.Call("SetInfoHook")
	end

end

function function_buttondeny()

	buttondeny = vgui.Create("DButton", generalvgui)
	buttondeny:SetSize(ScrW() * 0.05,ScrH() * 0.02)
	buttondeny:SetPos(ScrW() * 0.2,ScrH() * 0.1)
	buttondeny:SetText("Annuler")
	buttondeny:SetColor(Color(255,255,255,220))
	buttondeny:SetVisible(true)
	buttondeny:MakePopup()
	buttondeny.DoClick = function()
		generalvgui:Close()
	end

end

hook.Add("ButtonAcceptHook","buttonaccept",function_buttonaccept)
hook.Add("ButtonDenyHook","buttondeny",function_buttondeny)