#DrBlackError
#Generiert die Actionbar-Anzeigen
#
#

execute as @a[tag=z1] at @s run title @s actionbar ["",{"text":"Mana: ","color":"blue","bold":true},{"score":{"name":"@s","objective":"mana"},"color":"blue","bold":true},{"text":" | ","bold":true,"color":"none"},{"text":"Ausdauer: ","color":"green","bold":true},{"score":{"name":"@s","objective":"stamina"},"color":"green","bold":true},{"text":" |","bold":true,"color":"none"},{"text":" Durst: 10","color":"yellow","bold":true},{"text":" |","bold":true,"color":"none"},{"text":" Temperatur: ","color":"aqua","bold":true},{"score":{"name":"@s","objective":"temperatur"},"color":"aqua","bold":true},{"text":"°MC","color":"aqua","bold":true}]
execute as @a[tag=!z1] at @s run title @s actionbar ["",{"text":"Ausdauer: ","color":"green","bold":true},{"score":{"name":"@s","objective":"stamina"},"color":"green","bold":true},{"text":" |","bold":true,"color":"none"},{"text":" Durst: 10","color":"yellow","bold":true},{"text":" |","bold":true,"color":"none"},{"text":" Temperatur: ","color":"aqua","bold":true},{"score":{"name":"@s","objective":"temperatur"},"color":"aqua","bold":true},{"text":"°MC","color":"aqua","bold":true}]
