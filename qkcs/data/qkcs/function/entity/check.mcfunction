$execute if dimension minecraft:overworld positioned $(x) 150 $(z) unless entity @n[distance=..2,type=minecraft:marker,tag=standardChunk] run return fail
$execute if dimension minecraft:the_nether positioned $(x) 150 $(z) unless entity @n[distance=..2,type=minecraft:marker,tag=standardChunk] run return fail
$execute if dimension minecraft:the_end positioned $(x) 150 $(z) unless entity @n[distance=..2,type=minecraft:marker,tag=standardChunk] run return fail

# execute if dimension minecraft:overworld positioned 1 1 1 run data merge entity @n[distance=..1,type=minecraft:marker,tag=standardChunk] {Tags:["Marker","standardChunk","chunkIDEF"]}

$execute if dimension minecraft:overworld positioned $(x) 150 $(z) run data merge entity @n[distance=..2,type=minecraft:marker,tag=standardChunk] {Tags:["Marker","standardChunk","chunkIDEF"]}
$execute if dimension minecraft:the_nether positioned $(x) 150 $(z) run data merge entity @n[distance=..2,type=minecraft:marker,tag=standardChunk] {Tags:["Marker","standardChunk","chunkIDEF"]}
$execute if dimension minecraft:the_end positioned $(x) 150 $(z) run data merge entity @n[distance=..2,type=minecraft:marker,tag=standardChunk] {Tags:["Marker","standardChunk","chunkIDEF"]}


# $tellraw @a [{"text": "[ChunkID E] 在 $(x) $(z)  找到区块标记 /区块ID:","color": "gray"},{"score":{name:"@n[type=minecraft:marker,tag=chunkIDEF]",objective:"ChunkID"},color:"white"},{"text": "！","bold": true,"color": "gray"},{"text": " 触发对象：","bold": true,"color": "gray"},{selector:"@s"}]


# $title @s actionbar [{"text": "[ChunkID E] 在 $(x) $(z)  找到区块标记 /区块ID:","color": "gray"},{"score":{name:"@n[type=minecraft:marker,tag=chunkIDEF]",objective:"ChunkID"},color:"white"},{"text": "！","bold": true,"color": "gray"}]

scoreboard players operation @s ChunkID = @n[type=minecraft:marker,tag=chunkIDEF] ChunkID

function qkcs:effect/entity

data merge entity @n[type=minecraft:marker,tag=chunkIDEF] {Tags:["Marker","standardChunk"]}