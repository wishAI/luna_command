execute as @a[scores={sethome=1..}] run function teleport:sethome
execute as @a[scores={home=1..}] run function teleport:home
execute as @a[scores={spawn=1..}] run function teleport:spawn
scoreboard players enable @a sethome
scoreboard players enable @a home
scoreboard players enable @a spawn

tellraw @a "zhazha"