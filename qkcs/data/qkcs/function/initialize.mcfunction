

tellraw @a [{"text": "[ChunkID] 初始化成功..","bold": true,"color": "gray"}]


scoreboard objectives add TempValue1 dummy
scoreboard objectives add TempValue2 dummy
scoreboard objectives add TempValue3 dummy
scoreboard objectives add Random dummy

scoreboard objectives add ChunkID dummy
scoreboard players set chunkID ChunkID 1

scoreboard objectives add Numbers dummy
scoreboard players set 16 Numbers 16
scoreboard players set -1 Numbers -1


function qkcs:effect/effectpool

data remove storage chunkeffect args

scoreboard players set FirstEntry FirstEntry 1