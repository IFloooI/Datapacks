#DrBlackRat
#ist der super tolle holz eimer den chris wolte
#skyblockplus:main, skyblockplus:setup

#?
#?
#holz eimer: /give @p minecraft:carrot_on_a_stick{CustomModelData:5} 1
#holz eimer mit wasser: /give @p minecraft:carrot_on_a_stick{CustomModelData:6} 1


#DrBlackRat
#Wasser aufnehmen
execute as @a[scores={wood_bucket_used=1..},nbt={SelectedItem:{tag:{CustomModelData:5}}}] at @s run tag @s add wbc_start
execute as @a[scores={wood_bucket_used=1..},nbt={SelectedItem:{tag:{CustomModelData:5}}}] at @s run tag @s add wbw_start

#DrBlackRat
#Cauldron
execute as @a[tag=wbc_start] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:"dust",Radius:0f,Duration:4,Tags:["cau_projektil"]}
execute as @a[tag=wbc_start] at @s run tp @e[tag=cau_projektil] @s
execute as @a[tag=wbc_start] at @s run tag @s add wbc_shoot
execute if entity @a[tag=wbc_start] as @e[tag=cau_projektil] at @s run tp @s ~ ~1.8 ~
execute as @e[tag=cau_projektil] at @s run tp @s ^ ^ ^1
execute as @e[tag=cau_projektil] at @s if block ~ ~ ~ cauldron unless entity @e[tag=cau_block,distance=..0.8] run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Radius:0f,Duration:40,Tags:["cau_block"]}

execute as @e[tag=cau_block] at @s if block ~ ~ ~ cauldron[level=3] run replaceitem entity @a[tag=wbc_shoot,limit=1,sort=nearest] weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:6,display:{Name:"{\"text\":\"Wassereimer\",\"italic\":\"false\"}"},HideFlags:4}
execute as @e[tag=cau_block] at @s if block ~ ~ ~ cauldron[level=3] run playsound minecraft:item.bucket.fill ambient @a
execute as @e[tag=cau_block] at @s if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=0]

#DrBlackRat
#reset wbc
tag @a[tag=wbc_start] remove wbc_start
execute as @e[tag=cau_projektil] at @s if block ~ ~ ~ cauldron run kill @s
execute as @e[tag=cau_block] at @s unless block ~ ~ ~ cauldron run kill @s
execute as @e[tag=cau_block] at @s if block ~ ~ ~ cauldron run kill @s
execute as @a[tag=wbc_shoot] at @s unless entity @e[tag=cau_projektil] unless entity @e[tag=cau_block] run tag @s remove wbc_shoot

#DrBlackRat
#wasser_block
execute as @a[tag=wbw_start] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:"dust",Radius:0f,Duration:4,Tags:["was_projektil"]}
execute as @a[tag=wbw_start] at @s run tp @e[tag=was_projektil] @s
execute as @a[tag=wbw_start] at @s run tag @s add wbw_shoot
execute if entity @a[tag=wbw_start] as @e[tag=was_projektil] at @s run tp @s ~ ~1.8 ~
execute as @e[tag=was_projektil] at @s run tp @s ^ ^ ^1
execute as @e[tag=was_projektil] at @s if block ~ ~ ~ water[level=0] unless entity @e[tag=was_block,distance=..0.8] run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Radius:0f,Duration:40,Tags:["was_block"]}

execute as @e[tag=was_block] at @s if block ~ ~ ~ water[level=0] run replaceitem entity @a[tag=wbw_shoot,limit=1,sort=nearest] weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:6,display:{Name:"{\"text\":\"Wassereimer\",\"italic\":\"false\"}"},HideFlags:4}
execute as @e[tag=was_block] at @s if block ~ ~ ~ water[level=0] run playsound minecraft:item.bucket.fill ambient @a

#DrBlackRat
#reset wbw
tag @a[tag=wbw_start] remove wbw_start
execute as @e[tag=was_projektil] at @s if block ~ ~ ~ water[level=0] run kill @s
execute as @e[tag=was_block] at @s if block ~ ~ ~ water[level=0] run setblock ~ ~ ~ air
execute as @e[tag=was_block] at @s unless block ~ ~ ~ water[level=0] run kill @s
execute as @e[tag=was_block] at @s if block ~ ~ ~ water[level=0] run kill @s
execute as @a[tag=wbw_shoot] at @s unless entity @e[tag=was_projektil] unless entity @e[tag=was_block] run tag @s remove wbw_shoot

#DrBlackRat
#Wasser setzten

execute as @a[scores={wood_bucket_used=1..},nbt={SelectedItem:{tag:{CustomModelData:6}}}] at @s run tag @s add water_wbc_start
execute as @a[scores={wood_bucket_used=1..},nbt={SelectedItem:{tag:{CustomModelData:6}}}] at @s run tag @s add water_wbw_start

#DrBlackRat
#Cauldron
execute as @a[tag=water_wbc_start] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:"dust",Radius:0f,Duration:4,Tags:["water_cau_projektil"]}
execute as @a[tag=water_wbc_start] at @s run tp @e[tag=water_cau_projektil] @s
execute as @a[tag=water_wbc_start] at @s run tag @s add water_wbc_shoot
execute if entity @a[tag=water_wbc_start] as @e[tag=water_cau_projektil] at @s run tp @s ~ ~1.8 ~
execute as @e[tag=water_cau_projektil] at @s run tp @s ^ ^ ^1
execute as @e[tag=water_cau_projektil] at @s if block ~ ~ ~ cauldron unless entity @e[tag=water_cau_block,distance=..0.8] run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Radius:0f,Duration:40,Tags:["water_cau_block"]}

execute as @e[tag=water_cau_block] at @s if block ~ ~ ~ cauldron[level=0] run replaceitem entity @a[tag=water_wbc_shoot,limit=1,sort=nearest] weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:5,display:{Name:"{\"text\":\"Holzeimer\",\"italic\":\"false\"}"},HideFlags:4}
execute as @e[tag=water_cau_block] at @s if block ~ ~ ~ cauldron[level=0] run playsound minecraft:item.bucket.empty ambient @a
execute as @e[tag=water_cau_block] at @s if block ~ ~ ~ cauldron[level=0] run setblock ~ ~ ~ cauldron[level=3]

#DrBlackRat
#reset water_wbc
tag @a[tag=water_wbc_start] remove water_wbc_start
execute as @e[tag=water_cau_projektil] at @s if block ~ ~ ~ cauldron run kill @s
execute as @e[tag=water_cau_block] at @s unless block ~ ~ ~ cauldron run kill @s
execute as @e[tag=water_cau_block] at @s if block ~ ~ ~ cauldron run kill @s
execute as @a[tag=water_wbc_shoot] at @s unless entity @e[tag=water_cau_projektil] unless entity @e[tag=water_cau_block] run tag @s remove water_wbc_shoot

#DrBlackRat
#water_wasser_block
execute as @a[tag=water_wbw_start] at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:"dust",Radius:0f,Duration:4,Tags:["water_was_projektil"]}
execute as @a[tag=water_wbw_start] at @s run tp @e[tag=water_was_projektil] @s
execute as @a[tag=water_wbw_start] at @s run tag @s add water_wbw_shoot
execute if entity @a[tag=water_wbw_start] as @e[tag=water_was_projektil] at @s run tp @s ~ ~1.8 ~
execute as @e[tag=water_was_projektil] at @s run tp @s ^ ^ ^1
execute as @e[tag=water_was_projektil] at @s unless block ~ ~ ~ water[level=0] run

execute as @e[tag=water_was_projektil] at @s if block ^ ^ ^1 cauldron run kill @s

execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron unless block ^ ^ ^1 water if block ~ ~ ~ air run replaceitem entity @a[tag=water_wbw_shoot,limit=1,sort=nearest] weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:5,display:{Name:"{\"text\":\"Holzeimer\",\"italic\":\"false\"}"},HideFlags:4}
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron unless block ^ ^ ^1 water if block ~ ~ ~ air run playsound minecraft:item.bucket.empty ambient @a
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron unless block ^ ^ ^1 water if block ~ ~ ~ air run setblock ~ ~ ~ water
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron unless block ^ ^ ^1 water if block ~ ~ ~ air run kill @s

execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=7] run replaceitem entity @a[tag=water_wbw_shoot,limit=1,sort=nearest] weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:5,display:{Name:"{\"text\":\"Holzeimer\",\"italic\":\"false\"}"},HideFlags:4}
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=7] run playsound minecraft:item.bucket.empty ambient @a
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=7] run setblock ^ ^ ^1 water
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=7] run kill @s

execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=6] run replaceitem entity @a[tag=water_wbw_shoot,limit=1,sort=nearest] weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:5,display:{Name:"{\"text\":\"Holzeimer\",\"italic\":\"false\"}"},HideFlags:4}
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=6] run playsound minecraft:item.bucket.empty ambient @a
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=6] run setblock ^ ^ ^1 water
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=6] run kill @s

execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=5] run replaceitem entity @a[tag=water_wbw_shoot,limit=1,sort=nearest] weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:5,display:{Name:"{\"text\":\"Holzeimer\",\"italic\":\"false\"}"},HideFlags:4}
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=5] run playsound minecraft:item.bucket.empty ambient @a
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=5] run setblock ^ ^ ^1 water
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=5] run kill @s

execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=4] run replaceitem entity @a[tag=water_wbw_shoot,limit=1,sort=nearest] weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:5,display:{Name:"{\"text\":\"Holzeimer\",\"italic\":\"false\"}"},HideFlags:4}
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=4] run playsound minecraft:item.bucket.empty ambient @a
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=4] run setblock ^ ^ ^1 water
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=4] run kill @s

execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=3] run replaceitem entity @a[tag=water_wbw_shoot,limit=1,sort=nearest] weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:5,display:{Name:"{\"text\":\"Holzeimer\",\"italic\":\"false\"}"},HideFlags:4}
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=3] run playsound minecraft:item.bucket.empty ambient @a
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=3] run setblock ^ ^ ^1 water
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=3] run kill @s

execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=2] run replaceitem entity @a[tag=water_wbw_shoot,limit=1,sort=nearest] weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:5,display:{Name:"{\"text\":\"Holzeimer\",\"italic\":\"false\"}"},HideFlags:4}
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=2] run playsound minecraft:item.bucket.empty ambient @a
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=2] run setblock ^ ^ ^1 water
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=2] run kill @s

execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=1] run replaceitem entity @a[tag=water_wbw_shoot,limit=1,sort=nearest] weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:5,display:{Name:"{\"text\":\"Holzeimer\",\"italic\":\"false\"}"},HideFlags:4}
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=1] run playsound minecraft:item.bucket.empty ambient @a
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=1] run setblock ^ ^ ^1 water
execute as @e[tag=water_was_projektil] at @s unless block ^ ^ ^1 air unless block ^ ^ ^1 cauldron if block ^ ^ ^1 water[level=1] run kill @s


#DrBlackRat
#reset wbw
tag @a[tag=water_wbw_start] remove water_wbw_start
execute as @e[tag=water_was_projektil] at @s if block ~ ~ ~ water[level=0] run kill @s
execute as @a[tag=water_wbw_shoot] at @s unless entity @e[tag=water_was_projektil] run tag @s remove water_wbw_shoot

#DrBlackRat
#reset
scoreboard players set @a[scores={wood_bucket_used=1..}] wood_bucket_used 0
