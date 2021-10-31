scoreboard players store result score @s home_x run data get entity @s Pos[0] 1
scoreboard players store result score @s home_y run data get entity @s Pos[1] 1
scoreboard players store result score @s home_z run data get entity @s Pos[2] 1
tellraw @s {"text": "你的家已经设置到当前位置！", "bold": "true", "color": "blue"}
scoreboard players set @s sethome 0