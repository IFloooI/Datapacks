execute as @a at @s if entity @e[nbt={Item:{id:"minecraft:cobblestone",Count:25b}},distance=..2,limit=1] if entity @e[nbt={Item:{id:"minecraft:dispenser",Count:2b}},distance=..2,limit=1] if entity @e[nbt={Item:{id:"minecraft:torch",Count:2b}},distance=..2,limit=1] run give @s minecraft:bat_spawn_egg{display:{Name:"{\"text\":\"Doppler Ofen\"}"},EntityTag:{Tags:["Oven"]}} 1
execute as @a at @s if entity @e[nbt={Item:{id:"minecraft:cobblestone",Count:25b}},distance=..2,limit=1] if entity @e[nbt={Item:{id:"minecraft:dispenser",Count:2b}},distance=..2,limit=1] if entity @e[nbt={Item:{id:"minecraft:torch",Count:2b}},distance=..2,limit=1] run kill @e[type=item,distance=..4]
