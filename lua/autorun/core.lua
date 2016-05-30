-----------------------
-- Communication Mod --
-----------------------
-- Auteur : Happy	 --
-- Auteur : Rhenar   --
-----------------------
-- Version : 0.1     --
-----------------------

function set_info( ply )

	ply:SetNWString("info", mic_info)

end

function dis_info( ply )

	get_mic_info = ply:GetNWString(mic_info)
	chat.AddText(Color(100,100,250), get_mic_info)

end

hook.Add("SetInfoHook","set_info",set_info)
hook.Add("DisInfoHook","dis_info",set_info)