# execute if entity @p[nbt={SelectedItem:{id:"minecraft:stone", Count: 64b}}] run tellraw @p {"text":"处理成功!", "bold":"true", "color":"green"}
execute if entity @p[nbt={SelectedItem:{id:"minecraft:cobblestone", Count: 64b}}] run give @p minecraft:sand 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:cobblestone", Count: 64b}}] run clear @p minecraft:cobblestone 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:stone", Count: 64b}}] run give @p minecraft:gravel 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:stone", Count: 64b}}] run clear @p minecraft:stone 64

execute if entity @p[nbt={SelectedItem:{id:"minecraft:stone_bricks", Count: 64b}}] run give @p minecraft:cracked_stone_bricks 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:stone_bricks", Count: 64b}}] run clear @p minecraft:stone_bricks 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:deepslate_bricks", Count: 64b}}] run give @p minecraft:cracked_deepslate_bricks 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:deepslate_bricks", Count: 64b}}] run clear @p minecraft:deepslate_bricks 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:deepslate_tiles", Count: 64b}}] run give @p minecraft:cracked_deepslate_tiles 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:deepslate_tiles", Count: 64b}}] run clear @p minecraft:deepslate_tiles 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:nether_bricks", Count: 64b}}] run give @p minecraft:cracked_nether_bricks 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:nether_bricks", Count: 64b}}] run clear @p minecraft:nether_bricks 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:polished_blackstone_bricks", Count: 64b}}] run give @p minecraft:cracked_polished_blackstone_bricks 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:polished_blackstone_bricks", Count: 64b}}] run clear @p minecraft:polished_blackstone_bricks 64