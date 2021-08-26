## Funciones a repetir
function stevedemaincra:economia/ecodatos
function stevedemaincra:economia/triggers/pagar
function stevedemaincra:economia/triggers/recibpago
function stevedemaincra:economia/triggers/trabajar


## Comandos a repetir


## Registrar solo a los que están trabajando
execute as @a[team=trabajando] run scoreboard players add @s tiempoParaPago 1


## Ganar dinero
execute as @a[scores={tiempoParaPago=500}] run scoreboard players add @s dolares 1
execute as @a[scores={tiempoParaPago=501..}] run scoreboard players reset @s tiempoParaPago