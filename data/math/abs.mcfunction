scoreboard players set @s -1 -1
scoreboard players operation @s math_out = @s math_in
execute unless score @s math_out matches 0.. run scoreboard players operation @s math_out *= @s -1