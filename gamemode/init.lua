AddCSLuaFile("shared.lua")
AddCSLuaFile("teamsetup.lua")
AddCSLuaFile("cl_init.lua")

include("shared.lua")
include("teamsetup.lua")

local pl = FindMetaTable("Player")


function GM:PlayerSpawn(ply)
    print("Player " .. ply:Nick() .. " has spawned")
    ply.SetupTeam(math.random(0, 1))
end


