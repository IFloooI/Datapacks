#DrBlackError
#Alle Inhalte dieser Datei werden bei einem Server-Restart oder einem Reload ausgeführt

#DrBlackError
#Nachricht die beim erfolgreichen Reload gesendet wird
tellraw @a[team=Admin] {"text":"Basicplus erfolgreich geladen!","color":"yellow"}
execute as @a[team=Admin] at @s run playsound minecraft:entity.arrow.hit_player ambient @a

#DrBlackError
#Added nessesary scoreboards
#life = health
scoreboard objectives add life

#leave = times left Server/Game
scoreboard objectives add leave minecraft.custom:minecraft.leave_game "Leave"

#timer = dummy
scoreboard objectives add timer dummy

#sleeping = dummy
scoreboard objectives add sleeping dummy

#exact = rclick with Carrot on a Stick
scoreboard objectives add exact minecraft.used:minecraft.carrot_on_a_stick

#?
#barrel_placed = times placed barrels // Customcrafting
scoreboard objectives add barrel_placed minecraft.used:minecraft.barrel

#DrBlackError
#Set scorboard displays
scoreboard objectives setdisplay belowName life
#scoreboard objectives setdisplay list xyz
#scoreboard objectives setdisplay sidebar xyz
