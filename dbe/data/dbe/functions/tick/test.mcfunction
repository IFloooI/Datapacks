#execute as @a at @s run fill ~1 ~3 ~1 ~-1 ~ ~-1 minecraft:air replace minecraft:torch
#execute as @a if entity @a[nbt={Inventory:[{id:"minecraft:torch",Slot:-106b}]}] at @s run setblock ~ ~2 ~ minecraft:torch
