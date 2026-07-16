-- Make vanilla tesla weapon research ALSO buff our electric turret, without our own
-- electric upgrades ever leaking onto tesla weapons (one-way bridge). No-op on base-only
-- installs where the "tesla" ammo category does not exist.

if not (data.raw["ammo-category"] and data.raw["ammo-category"]["tesla"]) then
	return
end

for _, tech in pairs(data.raw.technology) do
	if tech.effects then
		local additions = {}
		for _, effect in ipairs(tech.effects) do
			if (effect.type == "ammo-damage" or effect.type == "gun-speed") and effect.ammo_category == "tesla" then
				local copy = table.deepcopy(effect)
				copy.ammo_category = "electric"
				additions[#additions + 1] = copy
			end
		end
		for _, copy in ipairs(additions) do
			tech.effects[#tech.effects + 1] = copy
		end
	end
end
