scoreboard players add Clearer floorclear 1
execute if score Clearer floorclear matches 1 run tellraw @a ["",{"text":"SecretTextYou'llNeverSee","color":"dark_red","bold":true,"obfuscated":true}]
execute if score Clearer floorclear matches 20 run tellraw @a ["",{"text":"---------------------------","color":"dark_red","bold":true}]
execute if score Clearer floorclear matches 40 run tellraw @a ["",{"text":"Roboter Gestartet...","color":"dark_red"}]
execute if score Clearer floorclear matches 80 run tellraw @a ["",{"text":"Welt-Scan wird ausgeführt....\n","color":"dark_red"}]
execute if score Clearer floorclear matches 100 run tellraw @a ["",{"text":"1%","color":"dark_red"}]
execute if score Clearer floorclear matches 110 run tellraw @a ["",{"text":"25%","color":"dark_red"}]
execute if score Clearer floorclear matches 160 run tellraw @a ["",{"text":"75%","color":"dark_red"}]
execute if score Clearer floorclear matches 200 run tellraw @a ["",{"text":"100%","color":"dark_red"}]
execute if score Clearer floorclear matches 240 run tellraw @a ["",{"text":"SCAN ABGESCHLOSSEN!\n","color":"dark_red","bold":true,"underlined":true}]
execute if score Clearer floorclear matches 260 run tellraw @a ["",{"text":"Diagnose:","color":"dark_red"}]
execute if score Clearer floorclear matches 280 run tellraw @a ["",{"text":"Kritische Menge an Items Festgestellt!!!\n","color":"dark_red","bold":true,"underlined":false}]
execute if score Clearer floorclear matches 300 run tellraw @a ["",{"text":"\nJegliche Items auf dem Boden werden in X Sekunden von Mir Vernichtet!","color":"dark_red","bold":true}]
execute if score Clearer floorclear matches 680 run kill @e[type=item]
execute if score Clearer floorclear matches 680 run tellraw @a ["",{"text":"\nAufgeräumt!","color":"dark_red"}]
execute if score Clearer floorclear matches 700 run tellraw @a ["",{"text":"Roboter Fährt herunter...","color":"dark_red"}]
execute if score Clearer floorclear matches 700 run tellraw @a ["",{"text":"----------------------------\n","color":"dark_red","bold":true}]
execute if score Clearer floorclear matches 719 run scoreboard players set Clearer floorclear -10