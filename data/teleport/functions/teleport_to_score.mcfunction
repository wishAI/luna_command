execute in minecraft:overworld run teleport @s 0 0 0

tellraw @s ["",{"text":"","color":"green","extra":["Teleporting to Home #",{"score":{"name":"@s","objective":"home"}}," (",{"selector":"@e[type=area_effect_cloud,tag=home_itsme,limit=1]"},")"]}]

# X positive


execute at @s run teleport @s[scores={home_x=262144..}] ~262144 ~ ~
scoreboard players remove @s[scores={home_x=262144..}] home_x 262144
execute at @s run teleport @s[scores={home_x=131072..}] ~131072 ~ ~
scoreboard players remove @s[scores={home_x=131072..}] home_x 131072
execute at @s run teleport @s[scores={home_x=65536..}] ~65536 ~ ~
scoreboard players remove @s[scores={home_x=65536..}] home_x 65536
execute at @s run teleport @s[scores={home_x=32768..}] ~32768 ~ ~
scoreboard players remove @s[scores={home_x=32768..}] home_x 32768
execute at @s run teleport @s[scores={home_x=16384..}] ~16384 ~ ~
scoreboard players remove @s[scores={home_x=16384..}] home_x 16384
execute at @s run teleport @s[scores={home_x=8192..}] ~8192 ~ ~
scoreboard players remove @s[scores={home_x=8192..}] home_x 8192
execute at @s run teleport @s[scores={home_x=4096..}] ~4096 ~ ~
scoreboard players remove @s[scores={home_x=4096..}] home_x 4096
execute at @s run teleport @s[scores={home_x=2048..}] ~2048 ~ ~
scoreboard players remove @s[scores={home_x=2048..}] home_x 2048
execute at @s run teleport @s[scores={home_x=1024..}] ~1024 ~ ~
scoreboard players remove @s[scores={home_x=1024..}] home_x 1024
execute at @s run teleport @s[scores={home_x=512..}] ~512 ~ ~
scoreboard players remove @s[scores={home_x=512..}] home_x 512
execute at @s run teleport @s[scores={home_x=256..}] ~256 ~ ~
scoreboard players remove @s[scores={home_x=256..}] home_x 256
execute at @s run teleport @s[scores={home_x=128..}] ~128 ~ ~
scoreboard players remove @s[scores={home_x=128..}] home_x 128
execute at @s run teleport @s[scores={home_x=64..}] ~64 ~ ~
scoreboard players remove @s[scores={home_x=64..}] home_x 64
execute at @s run teleport @s[scores={home_x=32..}] ~32 ~ ~
scoreboard players remove @s[scores={home_x=32..}] home_x 32
execute at @s run teleport @s[scores={home_x=16..}] ~16 ~ ~
scoreboard players remove @s[scores={home_x=16..}] home_x 16
execute at @s run teleport @s[scores={home_x=8..}] ~8 ~ ~
scoreboard players remove @s[scores={home_x=8..}] home_x 8
execute at @s run teleport @s[scores={home_x=4..}] ~4 ~ ~
scoreboard players remove @s[scores={home_x=4..}] home_x 4
execute at @s run teleport @s[scores={home_x=2..}] ~2 ~ ~
scoreboard players remove @s[scores={home_x=2..}] home_x 2
execute at @s run teleport @s[scores={home_x=1..}] ~1 ~ ~
scoreboard players remove @s[scores={home_x=1..}] home_x 1


# X negative

execute at @s run teleport @s[scores={home_x=..-262144}] ~-262144 ~ ~
scoreboard players add @s[scores={home_x=..-262144}] home_x 262144
execute at @s run teleport @s[scores={home_x=..-131072}] ~-131072 ~ ~
scoreboard players add @s[scores={home_x=..-131072}] home_x 131072
execute at @s run teleport @s[scores={home_x=..-65536}] ~-65536 ~ ~
scoreboard players add @s[scores={home_x=..-65536}] home_x 65536
execute at @s run teleport @s[scores={home_x=..-32768}] ~-32768 ~ ~
scoreboard players add @s[scores={home_x=..-32768}] home_x 32768
execute at @s run teleport @s[scores={home_x=..-16384}] ~-16384 ~ ~
scoreboard players add @s[scores={home_x=..-16384}] home_x 16384
execute at @s run teleport @s[scores={home_x=..-8192}] ~-8192 ~ ~
scoreboard players add @s[scores={home_x=..-8192}] home_x 8192
execute at @s run teleport @s[scores={home_x=..-4096}] ~-4096 ~ ~
scoreboard players add @s[scores={home_x=..-4096}] home_x 4096
execute at @s run teleport @s[scores={home_x=..-2048}] ~-2048 ~ ~
scoreboard players add @s[scores={home_x=..-2048}] home_x 2048
execute at @s run teleport @s[scores={home_x=..-1024}] ~-1024 ~ ~
scoreboard players add @s[scores={home_x=..-1024}] home_x 1024
execute at @s run teleport @s[scores={home_x=..-512}] ~-512 ~ ~
scoreboard players add @s[scores={home_x=..-512}] home_x 512
execute at @s run teleport @s[scores={home_x=..-256}] ~-256 ~ ~
scoreboard players add @s[scores={home_x=..-256}] home_x 256
execute at @s run teleport @s[scores={home_x=..-128}] ~-128 ~ ~
scoreboard players add @s[scores={home_x=..-128}] home_x 128
execute at @s run teleport @s[scores={home_x=..-64}] ~-64 ~ ~
scoreboard players add @s[scores={home_x=..-64}] home_x 64
execute at @s run teleport @s[scores={home_x=..-32}] ~-32 ~ ~
scoreboard players add @s[scores={home_x=..-32}] home_x 32
execute at @s run teleport @s[scores={home_x=..-16}] ~-16 ~ ~
scoreboard players add @s[scores={home_x=..-16}] home_x 16
execute at @s run teleport @s[scores={home_x=..-8}] ~-8 ~ ~
scoreboard players add @s[scores={home_x=..-8}] home_x 8
execute at @s run teleport @s[scores={home_x=..-4}] ~-4 ~ ~
scoreboard players add @s[scores={home_x=..-4}] home_x 4
execute at @s run teleport @s[scores={home_x=..-2}] ~-2 ~ ~
scoreboard players add @s[scores={home_x=..-2}] home_x 2
execute at @s run teleport @s[scores={home_x=..-1}] ~-1 ~ ~
scoreboard players add @s[scores={home_x=..-1}] home_x 1


# Z positive

execute at @s run teleport @s[scores={home_z=262144..}] ~ ~ ~262144
scoreboard players remove @s[scores={home_z=262144..}] home_z 262144
execute at @s run teleport @s[scores={home_z=131072..}] ~ ~ ~131072
scoreboard players remove @s[scores={home_z=131072..}] home_z 131072
execute at @s run teleport @s[scores={home_z=65536..}] ~ ~ ~65536
scoreboard players remove @s[scores={home_z=65536..}] home_z 65536
execute at @s run teleport @s[scores={home_z=32768..}] ~ ~ ~32768
scoreboard players remove @s[scores={home_z=32768..}] home_z 32768
execute at @s run teleport @s[scores={home_z=16384..}] ~ ~ ~16384
scoreboard players remove @s[scores={home_z=16384..}] home_z 16384
execute at @s run teleport @s[scores={home_z=8192..}] ~ ~ ~8192
scoreboard players remove @s[scores={home_z=8192..}] home_z 8192
execute at @s run teleport @s[scores={home_z=4096..}] ~ ~ ~4096
scoreboard players remove @s[scores={home_z=4096..}] home_z 4096
execute at @s run teleport @s[scores={home_z=2048..}] ~ ~ ~2048
scoreboard players remove @s[scores={home_z=2048..}] home_z 2048
execute at @s run teleport @s[scores={home_z=1024..}] ~ ~ ~1024
scoreboard players remove @s[scores={home_z=1024..}] home_z 1024
execute at @s run teleport @s[scores={home_z=512..}] ~ ~ ~512
scoreboard players remove @s[scores={home_z=512..}] home_z 512
execute at @s run teleport @s[scores={home_z=256..}] ~ ~ ~256
scoreboard players remove @s[scores={home_z=256..}] home_z 256
execute at @s run teleport @s[scores={home_z=128..}] ~ ~ ~128
scoreboard players remove @s[scores={home_z=128..}] home_z 128
execute at @s run teleport @s[scores={home_z=64..}] ~ ~ ~64
scoreboard players remove @s[scores={home_z=64..}] home_z 64
execute at @s run teleport @s[scores={home_z=32..}] ~ ~ ~32
scoreboard players remove @s[scores={home_z=32..}] home_z 32
execute at @s run teleport @s[scores={home_z=16..}] ~ ~ ~16
scoreboard players remove @s[scores={home_z=16..}] home_z 16
execute at @s run teleport @s[scores={home_z=8..}] ~ ~ ~8
scoreboard players remove @s[scores={home_z=8..}] home_z 8
execute at @s run teleport @s[scores={home_z=4..}] ~ ~ ~4
scoreboard players remove @s[scores={home_z=4..}] home_z 4
execute at @s run teleport @s[scores={home_z=2..}] ~ ~ ~2
scoreboard players remove @s[scores={home_z=2..}] home_z 2
execute at @s run teleport @s[scores={home_z=1..}] ~ ~ ~1
scoreboard players remove @s[scores={home_z=1..}] home_z 1


# Z negative

execute at @s run teleport @s[scores={home_z=..-262144}] ~ ~ ~-262144
scoreboard players add @s[scores={home_z=..-262144}] home_z 262144
execute at @s run teleport @s[scores={home_z=..-131072}] ~ ~ ~-131072
scoreboard players add @s[scores={home_z=..-131072}] home_z 131072
execute at @s run teleport @s[scores={home_z=..-65536}] ~ ~ ~-65536
scoreboard players add @s[scores={home_z=..-65536}] home_z 65536
execute at @s run teleport @s[scores={home_z=..-32768}] ~ ~ ~-32768
scoreboard players add @s[scores={home_z=..-32768}] home_z 32768
execute at @s run teleport @s[scores={home_z=..-16384}] ~ ~ ~-16384
scoreboard players add @s[scores={home_z=..-16384}] home_z 16384
execute at @s run teleport @s[scores={home_z=..-8192}] ~ ~ ~-8192
scoreboard players add @s[scores={home_z=..-8192}] home_z 8192
execute at @s run teleport @s[scores={home_z=..-4096}] ~ ~ ~-4096
scoreboard players add @s[scores={home_z=..-4096}] home_z 4096
execute at @s run teleport @s[scores={home_z=..-2048}] ~ ~ ~-2048
scoreboard players add @s[scores={home_z=..-2048}] home_z 2048
execute at @s run teleport @s[scores={home_z=..-1024}] ~ ~ ~-1024
scoreboard players add @s[scores={home_z=..-1024}] home_z 1024
execute at @s run teleport @s[scores={home_z=..-512}] ~ ~ ~-512
scoreboard players add @s[scores={home_z=..-512}] home_z 512
execute at @s run teleport @s[scores={home_z=..-256}] ~ ~ ~-256
scoreboard players add @s[scores={home_z=..-256}] home_z 256
execute at @s run teleport @s[scores={home_z=..-128}] ~ ~ ~-128
scoreboard players add @s[scores={home_z=..-128}] home_z 128
execute at @s run teleport @s[scores={home_z=..-64}] ~ ~ ~-64
scoreboard players add @s[scores={home_z=..-64}] home_z 64
execute at @s run teleport @s[scores={home_z=..-32}] ~ ~ ~-32
scoreboard players add @s[scores={home_z=..-32}] home_z 32
execute at @s run teleport @s[scores={home_z=..-16}] ~ ~ ~-16
scoreboard players add @s[scores={home_z=..-16}] home_z 16
execute at @s run teleport @s[scores={home_z=..-8}] ~ ~ ~-8
scoreboard players add @s[scores={home_z=..-8}] home_z 8
execute at @s run teleport @s[scores={home_z=..-4}] ~ ~ ~-4
scoreboard players add @s[scores={home_z=..-4}] home_z 4
execute at @s run teleport @s[scores={home_z=..-2}] ~ ~ ~-2
scoreboard players add @s[scores={home_z=..-2}] home_z 2
execute at @s run teleport @s[scores={home_z=..-1}] ~ ~ ~-1
scoreboard players add @s[scores={home_z=..-1}] home_z 1


# Y (only positive)

execute at @s run teleport @s[scores={home_y=128..}] ~ ~128 ~
scoreboard players remove @s[scores={home_y=128..}] home_y 128
execute at @s run teleport @s[scores={home_y=64..}] ~ ~64 ~
scoreboard players remove @s[scores={home_y=64..}] home_y 64
execute at @s run teleport @s[scores={home_y=32..}] ~ ~32 ~
scoreboard players remove @s[scores={home_y=32..}] home_y 32
execute at @s run teleport @s[scores={home_y=16..}] ~ ~16 ~
scoreboard players remove @s[scores={home_y=16..}] home_y 16
execute at @s run teleport @s[scores={home_y=8..}] ~ ~8 ~
scoreboard players remove @s[scores={home_y=8..}] home_y 8
execute at @s run teleport @s[scores={home_y=4..}] ~ ~4 ~
scoreboard players remove @s[scores={home_y=4..}] home_y 4
execute at @s run teleport @s[scores={home_y=2..}] ~ ~2 ~
scoreboard players remove @s[scores={home_y=2..}] home_y 2
execute at @s run teleport @s[scores={home_y=1..}] ~ ~1 ~
scoreboard players remove @s[scores={home_y=1..}] home_y 1