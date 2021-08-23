execute at @e[type=item,name="/pagar 10"] run tag @p add persona1
execute at @e[type=item,name="/pagar 10"] run tag @e[distance=2] add persona2
execute at @e[type=item,name="/pagar 10"] run scoreboard players remove @e[tag=persona1] dolares 10
execute at @e[type=item,name="/pagar 10"] run scoreboard players add @e[tag=persona2] dolares 10
execute at @e[type=item,name="/pagar 10"] run tag @e remove persona1
execute at @e[type=item,name="/pagar 10"] run tag @e remove persona2
execute at @e[type=item,name="/pagar 10"] run give @p writable_book
execute at @e[type=item,name="/pagar 10"] run kill @e[name="/pagar 10"]