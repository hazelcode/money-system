execute at @e[type=item,name="/trabajar"] run tag @p add trabajar
execute at @e[type=item,name="/trabajar"] run team join trabajando @e[tag=trabajar]
execute at @e[type=item,name="/trabajar"] run tag @p remove trabajar
execute at @e[type=item,name="/trabajar"] run give @p writable_book
execute at @e[type=item,name="/trabajar"] run kill @e[name="/trabajar"]