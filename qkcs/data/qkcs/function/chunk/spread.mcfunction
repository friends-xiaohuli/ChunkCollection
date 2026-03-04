

summon minecraft:armor_stand ~ 150 ~ {Tags:["Chunk","FindChunk"],Invisible:1b,Invulnerable:1b,Marker:1b}
execute as @e[type=minecraft:armor_stand,tag=FindChunk] at @s run function qkcs:chunk/find