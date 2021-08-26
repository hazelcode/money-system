## Funciones a cargar
function stevedemaincra:economia/ecodatos


## Equipos ##
team add trabajando {"text":"[TRABAJADO]"}


## Triggers ##
scoreboard objectives add pagar trigger
scoreboard objectives add recibirPago trigger
scoreboard objectives add trabajar trigger


## Habilitar triggers ##
scoreboard players enable @a pagar
scoreboard players enable @a recibirPago
scoreboard players enable @a trabajar


## Scoreboards ##
scoreboard objectives add tiempoParaPago dummy {"text":"[TIEMPO PARA SIGUIENTE PAGO]","color":"blue"}
scoreboard objectives add dolares dummy {"text":"[DÓLARES]","color":"yellow"}
scoreboard objectives add montoPagar dummy


## Comandos a cargar
gamerule commandBlockOutput false
scoreboard objectives setdisplay sidebar dolares