
# 找到这个块的西北角，寻找区块编号

# --- 处理 X 轴：寻找该区块最西侧 (最小 X) ---
# 1. 获取当前坐标并存入计分板
execute store result score FE.X TempValue2 run data get entity @s Pos[0]

# 2. 计算相对于西北角的偏移量
scoreboard players operation FE.Math TempValue2 = FE.X TempValue2
scoreboard players operation FE.Math TempValue2 %= 16 Numbers

# 3. [关键步骤] 负数修正：确保坐标在负数区时，依然指向该区块的最小边界
# 例如：X=-1 时，-1%16=-1。修正后：-1+16=15。西北角 = -1 - 15 = -16 (正确)
execute if score FE.Math TempValue2 matches ..-1 run scoreboard players add FE.Math TempValue2 16

# 4. 计算出西北角 X
scoreboard players operation FE.NW_X TempValue2 = FE.X TempValue2
scoreboard players operation FE.NW_X TempValue2 -= FE.Math TempValue2


# --- 处理 Z 轴：寻找该区块最北侧 (最小 Z) ---
# 1. 获取当前 Z 坐标
execute store result score FE.Z TempValue2 run data get entity @s Pos[2]

# 2. 计算偏移量
scoreboard players operation FE.Math TempValue2 = FE.Z TempValue2
scoreboard players operation FE.Math TempValue2 %= 16 Numbers

# 3. 负数修正
execute if score FE.Math TempValue2 matches ..-1 run scoreboard players add FE.Math TempValue2 16

# 4. 计算出西北角 Z
scoreboard players operation FE.NW_Z TempValue2 = FE.Z TempValue2
scoreboard players operation FE.NW_Z TempValue2 -= FE.Math TempValue2


# --- 结果存储与后续操作 ---
# 将计算出的西北角坐标存入 Storage，准备传给检测函数
execute store result storage fearker Pos.x int 1 run scoreboard players get FE.NW_X TempValue2
execute store result storage fearker Pos.z int 1 run scoreboard players get FE.NW_Z TempValue2

# 调用你的检测/编号绑定函数
execute store result score FE.result TempValue2 run function qkcs:entity/check with storage fearker Pos
execute if score FE.result TempValue2 matches 0 run function qkcs:chunk/spread

# tellraw @a [{"text": "[ChunkID E] 已生成FIND 位于","color": "gray"},{score:{name:FE.X,objective:"TempValue2"}},{"text": " ","bold": true,"color": "gray"},{score:{name:FE.Z,objective:"TempValue2"}},{"text": "的标记 ","color": "gray"},{"text": " 触发对象：","bold": true,"color": "gray"},{selector:"@s"}]


data remove storage fearker Pos
scoreboard players reset FE.X TempValue2
scoreboard players reset FE.y TempValue2
scoreboard players reset FE.Z TempValue2
scoreboard players reset FE.Math TempValue2
scoreboard players reset FE.result TempValue2
