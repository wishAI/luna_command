execute in minecraft:overworld run teleport @s 800 70 -500
scoreboard players set @s spawn 0
tellraw @s {"text": "传送完成！", "bold": "true", "color": "blue"}