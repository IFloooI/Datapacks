execute as @e[type=item,nbt={Item:{id:"minecraft:stone_sword",Count:1b}},nbt=!{Item:{tag:{ench:["glowattack"]}}}] at @s if entity @e[nbt={Item:{tag:{ench:["glowattack"]}}},distance=..1,limit=1] run data modify entity @s Item.tag.ench append value glowattack
execute as @e[nbt={Item:{tag:{ench:["glowattack"]}}},nbt=!{Item:{id:"minecraft:enchanted_book",Count:1b}},nbt=!{Item:{tag:{display:{Lore:['{"text":"Leuchtend","color":"gold"}']}}}}] run data modify entity @s Item.tag.display.Lore append value '{"text":"Leuchtend","color":"gold"}'
