execute as @e[nbt={Item:{tag:{ench:["fireres"]}}},nbt=!{Item:{id:"minecraft:enchanted_book",Count:1b}},nbt=!{Item:{tag:{display:{Lore:['{"text":"Feuerresistenz","color":"dark_red"}']}}}}] run data modify entity @s Item.tag.display.Lore append value '{"text":"Feuerresistenz","color":"dark_red"}'
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_chestplate",Count:1b}},nbt=!{Item:{tag:{ench:["fireres"]}}}] at @s if entity @e[nbt={Item:{tag:{ench:["fireres"]}}},distance=..1,limit=1] run data modify entity @s Item.tag.ench append value fireres
