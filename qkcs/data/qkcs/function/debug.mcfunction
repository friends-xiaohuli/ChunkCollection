

# scoreboard objectives setdisplay sidebar ChunkID

time set day

scoreboard players reset * TempValue1
scoreboard players reset * TempValue2
scoreboard players reset * FirstEntry
scoreboard players reset * ChunkID
scoreboard players set chunkID ChunkID 1


kill @e[type=minecraft:marker]
kill @e[type=minecraft:armor_stand]
kill @e[type=minecraft:text_display]

