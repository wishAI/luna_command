execute if score @p luna_coin matches 2.. run function shop:sell_dye_helper
execute if score @p luna_coin matches 2.. run tellraw @p {"text":"交易成功!", "bold":"true", "color":"green"}
execute unless score @p luna_coin matches 2.. run tellraw @p {"text":"交易失败，请检查余额!", "bold":"true", "color":"red"}
execute if score @p luna_coin matches 2.. run scoreboard players remove @p luna_coin 2
function shop:show_rest