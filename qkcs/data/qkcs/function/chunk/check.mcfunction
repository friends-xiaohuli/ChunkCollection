$execute if dimension minecraft:overworld positioned ~-$(x) ~ ~-$(z) if entity @n[distance=..2,type=minecraft:marker,tag=standardChunk] run return fail
$execute if dimension minecraft:the_nether positioned ~-$(x) ~ ~-$(z) if entity @n[distance=..2,type=minecraft:marker,tag=standardChunk] run return fail
$execute if dimension minecraft:the_end positioned ~-$(x) ~ ~-$(z) if entity @n[distance=..2,type=minecraft:marker,tag=standardChunk] run return fail



function qkcs:chunk/place_marker with storage fmarker Pos