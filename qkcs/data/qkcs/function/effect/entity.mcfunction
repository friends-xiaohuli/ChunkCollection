

execute at @s store result score EEF.ChunkID TempValue3 run scoreboard players get @s ChunkID


scoreboard players operation EEF.EffectID TempValue3 = EEF.ChunkID TempValue3
execute at @s store result storage tempvalue args.EffectID int 1 run scoreboard players remove EEF.EffectID TempValue3 1


function qkcs:effect/entityeff with storage tempvalue args






function qkcs:effect/text_display with storage tempvalue args




function qkcs:effect/effectgive with storage tempvalue args


data remove storage tempvalue args
scoreboard players reset EEF.ChunkID TempValue3
scoreboard players reset EEF.EffectID TempValue3