scoreboard players operation @s home_temp_x = @s home_x
scoreboard players operation @s home_temp_y = @s home_y
scoreboard players operation @s home_temp_z = @s home_z
function teleport:teleport_to_score
scoreboard players operation @s home_x = @s home_temp_x
scoreboard players operation @s home_y = @s home_temp_y
scoreboard players operation @s home_z = @s home_temp_z
scoreboard players set @s home 0
tellraw @s {"text": "传送完成！", "bold": "true", "color": "blue"}