summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["pla_homes.itsme","pla_home"],CustomName:"zhazha"}
scoreboard players set @e[tag=pla_home] home_x 100
scoreboard players operation @e[tag=pla_home] home_x += @p luna_coin
scoreboard players get @e[tag=pla_home,limit=1] home_x