
# 找到这个块的西北角，如果还没有标记，则在该点上放置一个标记。

# Get x and z coords of this entity.
execute store result score FM.X TempValue1 run data get entity @s Pos[0]
execute store result score FM.Z TempValue1 run data get entity @s Pos[2]

# Calculate x steps.
scoreboard players operation FM.Math TempValue1 = FM.X TempValue1
scoreboard players operation FM.Math TempValue1 %= 16 Numbers
execute if score FM.Math TempValue1 matches ..-1 run function qkcs:chunk/negative
execute store result storage fmarker Pos.x int 1 run scoreboard players get FM.Math TempValue1

# Calculate z steps.
scoreboard players operation FM.Math TempValue1 = FM.Z TempValue1
scoreboard players operation FM.Math TempValue1 %= 16 Numbers
execute if score FM.Math TempValue1 matches ..-1 run function qkcs:chunk/negative
execute store result storage fmarker Pos.z int 1 run scoreboard players get FM.Math TempValue1

# Place marker in the correct place, at the corner of the chunk.
execute store result score FE.result TempValue1 run function qkcs:chunk/check with storage fmarker Pos
execute if score FE.result TempValue2 matches 0 run return fail

# tellraw @a [{"text": "[ChunkID] 已生成FIND 位于","color": "gray"},{score:{name:FM.X,objective:"TempValue1"}},{"text": " ","bold": true,"color": "gray"},{score:{name:FM.Z,objective:"TempValue1"}},{"text": "的标记 ","color": "gray"},{"text": "/下一个标记ID： ","color": "gray"},{"score":{name:"chunkID",objective:"ChunkID"},color:"white"},{"text": "！","bold": true,"color": "gray"}]


data remove storage fmarker Pos
scoreboard players reset FM.X TempValue1
scoreboard players reset FM.Z TempValue1
scoreboard players reset FM.Math TempValue1

kill @s