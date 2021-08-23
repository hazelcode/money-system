## Funciones a repetir
function stevedemaincra:economia/ecodatos
function stevedemaincra:economia/comandos/pagar100

## Comandos a repetir

## Registrar solo a los que están trabajando
execute as @a[team=trabajando] run scoreboard players add @s tiempoParaPago 1

## Ganar dinero
execute as @a[scores={tiempoParaPago=750}] run scoreboard players add @s dolares 1
execute as @a[scores={tiempoParaPago=751..}] run scoreboard players reset @s tiempoParaPago