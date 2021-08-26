## RECIBIR 1 ##
execute if score @s recibirPago matches 1 run tag @s add persona2
execute if score @s recibirPago matches 1 run scoreboard players remove @a[tag=persona1] dolares 1
execute if score @s recibirPago matches 1 run scoreboard players add @s dolares 1
execute if score @s recibirPago matches 1 run scoreboard players reset @a[tag=persona1] montoPagar
execute if score @s recibirPago matches 1 run tellraw @a[tag=persona1] {"text":"[ECONOMIA] Se te ha cobrado $1 con éxito!"}
execute if score @s recibirPago matches 1 run tag @a remove persona1
execute if score @s recibirPago matches 1 run tag @a remove persona2
execute if score @s recibirPago matches 1 run scoreboard players set @s recibirPago 0
## RECIBIR 10 ##
execute if score @s recibirPago matches 10 run tag @s add persona2
execute if score @s recibirPago matches 10 run scoreboard players remove @a[tag=persona1] dolares 10
execute if score @s recibirPago matches 10 run scoreboard players add @s dolares 10
execute if score @s recibirPago matches 10 run scoreboard players reset @a[tag=persona1] montoPagar
execute if score @s recibirPago matches 10 run tellraw @a[tag=persona1] {"text":"[ECONOMIA] Se te ha cobrado $10 con éxito!"}
execute if score @s recibirPago matches 10 run tag @a remove persona1
execute if score @s recibirPago matches 10 run tag @a remove persona2
execute if score @s recibirPago matches 10 run scoreboard players set @s recibirPago 0
## RECIBIR 100 ##
execute if score @s recibirPago matches 100 run tag @s add persona2
execute if score @s recibirPago matches 100 run scoreboard players remove @a[tag=persona1] dolares 100
execute if score @s recibirPago matches 100 run scoreboard players add @s dolares 100
execute if score @s recibirPago matches 100 run scoreboard players reset @a[tag=persona1] montoPagar
execute if score @s recibirPago matches 100 run tellraw @a[tag=persona1] {"text":"[ECONOMIA] Se te ha cobrado $100 con éxito!"}
execute if score @s recibirPago matches 100 run tag @a remove persona1
execute if score @s recibirPago matches 100 run tag @a remove persona2
execute if score @s recibirPago matches 100 run scoreboard players set @s recibirPago 0
## RECIBIR 1000 ##
execute if score @s recibirPago matches 1000 run tag @s add persona2
execute if score @s recibirPago matches 1000 run scoreboard players remove @a[tag=persona1] dolares 1000
execute if score @s recibirPago matches 1000 run scoreboard players add @s dolares 1000
execute if score @s recibirPago matches 1000 run scoreboard players reset @a[tag=persona1] montoPagar
execute if score @s recibirPago matches 1000 run tellraw @a[tag=persona1] {"text":"[ECONOMIA] Se te ha cobrado $1000 con éxito!"}
execute if score @s recibirPago matches 1000 run tag @a remove persona1
execute if score @s recibirPago matches 1000 run tag @a remove persona2
execute if score @s recibirPago matches 1000 run scoreboard players set @s recibirPago 0
## CANCELAR COBRO ##
execute if score @s recibirPago matches -1 run tag @s add persona2
execute if score @s recibirPago matches -1 run scoreboard players reset @a[tag=persona1] montoPagar
execute if score @s recibirPago matches -1 run tellraw @a[tag=persona1] {"text":"[ECONOMIA] Te han cancelado el pago, no se te ha cobrado nada.","color":"red"}
execute if score @s recibirPago matches -1 run tellraw @a[tag=persona2] {"text":"[ECONOMIA] Cobro cancelado con éxito, no se te ha pagado nada","color":"yellow"}
execute if score @s recibirPago matches -1 run tag @a remove persona1
execute if score @s recibirPago matches -1 run tag @a remove persona2
execute if score @s recibirPago matches -1 run scoreboard players set @s recibirPago 0
## USO INVÁLIDO ##
execute as @a[scores={recibirPago=..-2}] run tellraw @a[scores={recibirPago=..-2}] {"text":"[ECONOMIA] Mínimo del valor excedido, sólo aceptamos -1, 1, 10, 100 y 1000","color":"red"}
execute as @a[scores={recibirPago=1001..}] run tellraw @a[scores={recibirPago=1001..}] {"text":"[ECONOMIA] Máximo del valor excedido, sólo aceptamos 1, 10, 100 y 1000","color":"red"}
execute as @a[scores={recibirPago=..-2}, scores={recibirPago=1001..}] run trigger recibirPago set 0