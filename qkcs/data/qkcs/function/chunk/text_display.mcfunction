

$execute if dimension minecraft:overworld positioned ~ ~ ~ run summon text_display ~ ~ ~ {Tags:["chunk_text"],billboard:"center",text:[{text:"区块编号: "},{score:{name:"chunkID",objective:"ChunkID"}},{text:"\n EFID: "},{text:"$(effect)"},{text:"\n amplifier:$(amplifier)"}]}
$execute if dimension minecraft:the_nether positioned ~ ~ ~ run summon text_display ~ ~ ~ {Tags:["chunk_text"],billboard:"center",text:[{text:"区块编号: "},{score:{name:"chunkID",objective:"ChunkID"}},{text:"\n EFID: "},{text:"$(effect)"},{text:"\n amplifier:$(amplifier)"}]}
$execute if dimension minecraft:the_end positioned ~ ~ ~ run summon text_display ~ ~ ~ {Tags:["chunk_text"],billboard:"center",text:[{text:"区块编号: "},{score:{name:"chunkID",objective:"ChunkID"}},{text:"\n EFID: "},{text:"$(effect)"},{text:"\n amplifier:$(amplifier)"}]}


data modify storage chunkeffect args append from storage effect args.RandomEf