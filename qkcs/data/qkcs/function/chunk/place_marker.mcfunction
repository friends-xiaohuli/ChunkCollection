
$execute if dimension minecraft:overworld positioned ~-$(x) ~ ~-$(z) run summon minecraft:marker ~ ~ ~ {Tags:["Marker","standardChunk","chunkID"]}
$execute if dimension minecraft:the_nether positioned ~-$(x) ~ ~-$(z) run summon minecraft:marker ~ ~ ~ {Tags:["Marker","standardChunk","chunkID"]}
$execute if dimension minecraft:the_end positioned ~-$(x) ~ ~-$(z) run summon minecraft:marker ~ ~ ~ {Tags:["Marker","standardChunk","chunkID"]}

scoreboard players operation @n[type=minecraft:marker,tag=chunkID] ChunkID = chunkID ChunkID
execute store result storage effect args.RandomEf.ChunkID int 1 run scoreboard players get @n[type=minecraft:marker,tag=chunkID] ChunkID


# $tellraw @a [{"text": "[ChunkID] 偏移量 $(x) $(z)   /当前ID: ","color": "gray"},{"score":{name:"chunkID",objective:"ChunkID"},color:"white"},{"text": " ！","bold": true,"color": "gray"}]


function qkcs:effect/tick
execute as @n[type=minecraft:marker,tag=chunkID] at @s run function qkcs:chunk/text_display with storage effect args.RandomEf



data merge entity @n[type=minecraft:marker,tag=chunkID] {Tags:["Marker","standardChunk"]}
scoreboard players add chunkID ChunkID 1