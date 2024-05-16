local ply = FindMetaTable("Player")

local teams = {}

teams[0] = {
    name = "Red",
    color = Color(255, 0, 0),
    weapons = {"weapon_crowbar"}
}

teams[1] = {
    name = "Blue",
    color = Color(0, 0, 255),
    weapons = {"weapon_crowbar", "weapon_crossbow"}
}

function ply:SetupTeam(n)
    if (not teams[n]) then return end 

    self:SetTeam(n)
    self:SetColor(teams[n].color)

    self:SetHealth(150)
    self:SetMaxHealth(200)
    self:SetWalkSpeed(200)
    self:SetRunSpeed(1000)
    self:SetModel("models/player/Group03m/Male_0" .. math.random(1, 9) .. ".mdl")

    self:GiveWeapons(n)
    self:CrosshairDisable()

end

function ply:GiveWeapons(n)
    for k, weapon in pairs(teams[n].weapons) do 
        self:Give(weapon)
    end
end