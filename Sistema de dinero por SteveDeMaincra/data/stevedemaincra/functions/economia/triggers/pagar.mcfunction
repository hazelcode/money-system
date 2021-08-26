## PAGAR 1 ##
execute if score @s pagar matches 1 run tag @s add persona1
execute if score @s pagar matches 1 run tellraw @s {"text":"Espera a que la segunda persona acepte tu pago","color":"yellow"}
execute if score @s pagar matches 1 run tellraw @s {"text":"Dile que ejecute /trigger recibirPago set 1 para que le pueda llegar el pago","color":"aqua"}
execute if score @s pagar matches 1 run tellraw @s {"text":"¡Lo bueno es que no se te cobrará hasta que esa persona acepte el pago! :D","color":"green"}
execute if score @s pagar matches 1 run scoreboard players set @a[tag=persona1] montoPagar 1
execute if score @s pagar matches 1 run tellraw @s {"text":"[AVISO] Si la otra persona aún no recibe su pago, por favor CANCELA el pago (Porque otra persona puede interferir en la operación!)","color":"red"}
execute if score @s pagar matches 1 run tellraw @s {"text":"Puedes cancelar el pago con /trigger pagar set -1","color":"red"}
execute if score @s pagar matches 1 run scoreboard players set @a[tag=persona1] pagar 0
## PAGAR 10 ##
execute if score @s pagar matches 10 run tag @s add persona1
execute if score @s pagar matches 10 run tellraw @s {"text":"Espera a que la segunda persona acepte tu pago","color":"yellow"}
execute if score @s pagar matches 10 run tellraw @s {"text":"Dile que ejecute /trigger recibirPago set 10 para que le pueda llegar el pago","color":"aqua"}
execute if score @s pagar matches 10 run tellraw @s {"text":"¡Lo bueno es que no se te cobrará hasta que esa persona acepte el pago! :D","color":"green"}
execute if score @s pagar matches 10 run scoreboard players set @a[tag=persona1] montoPagar 10
execute if score @s pagar matches 10 run tellraw @s {"text":"[AVISO] Si la otra persona aún no recibe su pago, por favor CANCELA el pago (Porque otra persona puede interferir en la operación!)","color":"red"}
execute if score @s pagar matches 10 run tellraw @s {"text":"Puedes cancelar el pago con /trigger pagar set -1","color":"red"}
execute if score @s pagar matches 10 run scoreboard players set @a[tag=persona1] pagar 0
## PAGAR 100 ##
execute if score @s pagar matches 100 run tag @s add persona1
execute if score @s pagar matches 100 run tellraw @s {"text":"Espera a que la segunda persona acepte tu pago","color":"yellow"}
execute if score @s pagar matches 100 run tellraw @s {"text":"Dile que ejecute /trigger recibirPago set 100 para que le pueda llegar el pago","color":"aqua"}
execute if score @s pagar matches 100 run tellraw @s {"text":"¡Lo bueno es que no se te cobrará hasta que esa persona acepte el pago! :D","color":"green"}
execute if score @s pagar matches 100 run scoreboard players set @a[tag=persona1] montoPagar 100
execute if score @s pagar matches 100 run tellraw @s {"text":"[AVISO] Si la otra persona aún no recibe su pago, por favor CANCELA el pago (Porque otra persona puede interferir en la operación!)","color":"red"}
execute if score @s pagar matches 100 run tellraw @s {"text":"Puedes cancelar el pago con /trigger pagar set -1","color":"red"}
execute if score @s pagar matches 100 run scoreboard players set @a[tag=persona1] pagar 0
## PAGAR 1000 ##
execute if score @s pagar matches 1000 run tag @s add persona1
execute if score @s pagar matches 1000 run tellraw @s {"text":"Espera a que la segunda persona acepte tu pago","color":"yellow"}
execute if score @s pagar matches 1000 run tellraw @s {"text":"Dile que ejecute /trigger recibirPago set 1000 para que le pueda llegar el pago","color":"aqua"}
execute if score @s pagar matches 1000 run tellraw @s {"text":"¡Lo bueno es que no se te cobrará hasta que esa persona acepte el pago! :D","color":"green"}
execute if score @s pagar matches 1000 run scoreboard players set @a[tag=persona1] montoPagar 1000
execute if score @s pagar matches 1000 run tellraw @s {"text":"[AVISO] Si la otra persona aún no recibe su pago, por favor CANCELA el pago (Porque otra persona puede interferir en la operación!)","color":"red"}
execute if score @s pagar matches 1000 run tellraw @s {"text":"Puedes cancelar el pago con /trigger pagar set -1","color":"red"}
execute if score @s pagar matches 1000 run scoreboard players set @a[tag=persona1] pagar 0
## CANCELAR PAGO ##
execute if score @s pagar matches -1 run scoreboard players reset @a[tag=persona1] montoPagar
execute if score @s pagar matches -1 run tellraw @s {"text":"[ECONOMIA] Pago cancelado con éxito, no se te ha cobrado nada","color":"green"}
## USO INVALIDO ##
execute as @a[scores={pagar=..-2}] run tellraw @a[scores={pagar=..-2}] {"text":"[ECONOMIA] Mínimo del valor excedido, sólo aceptamos -1, 1, 10, 100 y 1000","color":"red"}
execute as @a[scores={pagar=1001..}] run tellraw @a[scores={pagar=1001..}] {"text":"[ECONOMIA] Máximo del valor excedido, sólo aceptamos -1, 1, 10, 100 y 1000","color":"red"}
execute as @a[scores={pagar=..-2}, scores={pagar=1001..}] run trigger pagar set 0