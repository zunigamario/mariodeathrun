local ply = FindMetaTable("Player")

local teams = {}

teams[0] = {
    name = "Red",
    color = Vector(1.0, 0, 0),
    weapons = {}
}

teams[1] = {
    name = "Blue",
    color = Vector(0, 0, 1.0),
    weapons = {}
}

function ply:SetupTeam(n)
    if (not teams[n]) then return end 

    self:SetTeam(n)
    self:SetColor(teams[n].color)

    self:SetHealth(150)
    self:SetMaxHealth(200)
    self:SetWalkSpeed(100)
    self:SetRunSpeed(1000)
    self:SetModel("models/player/Group03m/Male_0" .. math.random(1, 9) .. ".mdl")


end