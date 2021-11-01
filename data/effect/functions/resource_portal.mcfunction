# rotate armor stand
execute as @e[type=armor_stand,limit=1,sort=nearest,dx=0.5,dy=0.5,dz=1] at @s run tp @s ~ ~ ~ ~8 ~

# show particle
# particle minecraft:falling_dust minecraft:lapis_block ~ ~9 ~ 0.25 1.5 0.25 0 3
particle minecraft:dripping_water ~ ~8 ~ 0.25 1.5 0.25 0 3
execute as @e[type=armor_stand,limit=1,sort=nearest,dx=0.5,dy=0.5,dz=1] at @s run particle minecraft:falling_dust minecraft:quartz_block ^2 ^8 ^
execute as @e[type=armor_stand,limit=1,sort=nearest,dx=0.5,dy=0.5,dz=1] at @s run particle minecraft:falling_dust minecraft:quartz_block ^-2 ^8 ^
# execute as @e[type=armor_stand,limit=1,sort=nearest,dx=0.5,dy=0.5,dz=1] at @s run particle minecraft:dust 1 1 1 3 ^2 ^9 ^
# execute as @e[type=armor_stand,limit=1,sort=nearest,dx=0.5,dy=0.5,dz=1] at @s run particle minecraft:dust 1 1 1 3 ^-2 ^9 ^