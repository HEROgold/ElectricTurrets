--make replacing and upgrading compatible with other mods

if data.raw["electric-turret"]["laser-turret"].fast_replaceable_group ~= nil then
	data.raw["electric-turret"]["electric-turret"].fast_replaceable_group =
		data.raw["electric-turret"]["laser-turret"].fast_replaceable_group
else
	data.raw["electric-turret"]["laser-turret"].fast_replaceable_group = "electric-turret"
	data.raw["electric-turret"]["electric-turret"].fast_replaceable_group = "electric-turret"
end
