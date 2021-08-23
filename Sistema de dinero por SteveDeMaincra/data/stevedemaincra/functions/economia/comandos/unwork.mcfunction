execute at @e[type=item,name="/notrabajar"] run tag @p add notrabajar
execute at @e[type=item,name="/notrabajar"] run team leave @e[tag=notrabajar,team=trabajando]
execute at @e[type=item,name="/notrabajar"] run tag @p remove notrabajar
execute at @e[type=item,name="/notrabajar"] run give @p writable_book
execute at @e[type=item,name="/notrabajar"] run kill @e[name="/notrabajar"]