# setblock use with entity
execute @a ~ ~ ~ setblock ~ ~-1 ~ air

# summon dead armor stand with tag
/summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,Tags:["pen"]}

# use scoreboard values to execute command
/execute store result entity @e[tag=point] Pos[0] double 1 run scoreboard players get <player> <x objective>
/execute store result entity @e[tag=point] Pos[1] double 1 run scoreboard players get <player> <y objective>
/execute store result entity @e[tag=point] Pos[2] double 1 run scoreboard players get <player> <z objective>

# save player's coordinate
/execute store result score @s x run data get entity @s Pos[0]
/execute store result score @s y run data get entity @s Pos[1]
/execute store result score @s z run data get entity @s Pos[2]


[WORLD_NAME]/datapacks/[DATA_PACK_NAME]/data/[NAMESPACE]/functions