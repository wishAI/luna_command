execute if score @p luna_coin matches 1.. run function shop:crush_service_helper
execute unless score @p luna_coin matches 1.. run tellraw @p {"text":"处理失败，请检查余额!", "bold":"true", "color":"red"}
execute if score @p luna_coin matches 1.. run scoreboard players remove @p luna_coin 1
function shop:show_rest