AddCSLuaFile("shared.lua")
AddCSLuaFile("teamsetup.lua")
AddCSLuaFile("cl_init.lua")

include("shared.lua")
include("teamsetup.lua")

local pl = FindMetaTable("Player")


function GM:PlayerSpawn(ply)
    print("Player " .. ply:Nick() .. " has spawned")
    ply:SetupHands()
    ply:SetupTeam(math.random(0, 1))
end

function GM:PlayerSetHandsModel( ply, ent )
    local simplemodel = player_manager.TranslateToPlayerModelName(ply:GetModel())
    local info = player_manager.TranslatePlayerHands(simplemodel)
    if info then
       ent:SetModel(info.model)
       ent:SetSkin(info.skin)
       ent:SetBodyGroups(info.body)
    end
 end


function GM:PlayerShouldTakeDamage( ply, attacker )
    local att 
    if (attacker:IsPlayer()) then 
        att = attacker

        if (ply:Team() == att:Team()) then 
            

    elseif (attacker:IsWorld()) then
        return true 
    elseif (attacker:IsNPC()) then
        return false
    else
        att = attacker:GetOwner()
    end

    PrintMessage(tostring(type(attacker)))
    PrintMessage(tostring(type(attacker)))

    -- local plyT = ply:Team()
    -- local attT = att:Team()

    -- if (plyT == attT) then 
    --     return false
    -- end

    return true
end