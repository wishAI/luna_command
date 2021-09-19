# check if luna_coin value is initialized 
execute unless score @p luna_coin matches 0.. run tellraw @p {"text":"欢迎来到露娜银行!","bold":true,"color":"green"}
execute unless score @p luna_coin matches 0.. run scoreboard players set @p luna_coin 0

# store coins if there are enough emerald
execute if entity @p[nbt={SelectedItem:{id:"minecraft:emerald", Count: 64b}}] run tellraw @p {"text":"存款成功!", "bold":"true", "color":"green"}
execute unless entity @p[nbt={SelectedItem:{id:"minecraft:emerald", Count: 64b}}] run tellraw @p {"text":"存款失败，请选中一组绿宝石后再尝试", "bold":"true", "color":"red"}
execute if entity @p[nbt={SelectedItem:{id:"minecraft:emerald", Count: 64b}}] run scoreboard players add @p luna_coin 64
execute if entity @p[nbt={SelectedItem:{id:"minecraft:emerald", Count: 64b}}] run clear @p minecraft:emerald 64 
function shop:show_rest