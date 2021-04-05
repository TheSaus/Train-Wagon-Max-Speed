require("functions")

local custom_cargo_wagon_speed = settings.startup["cwms"].value
if settings.startup["cwms-t"].value then
 	data.raw["cargo-wagon"]["cargo-wagon"].max_speed = custom_cargo_wagon_speed
end

local custom_fluid_wagon_speed = settings.startup["fwms"].value
if settings.startup["fwms-t"].value then
 	data.raw["fluid-wagon"]["fluid-wagon"].max_speed = custom_fluid_wagon_speed
end

local custom_artillery_wagon_speed = settings.startup["awms"].value
if settings.startup["awms-t"].value then
 	data.raw["artillery-wagon"]["artillery-wagon"].max_speed = custom_artillery_wagon_speed
end

local custom_vehicle_wagon_speed = settings.startup["vwms"].value
if mods['VehicleWagon2'] then
	for _,wagon in pairs(data.raw['cargo-wagon']) do
		if wagon.name:match("vehicle%-wagon") then	
			wagon.max_speed = custom_vehicle_wagon_speed
		end
	end
end
