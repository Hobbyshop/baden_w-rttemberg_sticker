# run for every item frame with the "bw_sticker" tag
# if the item in the frame is not a filled map with id 187
# we first create an interaction box...
execute as @e[type=minecraft:item_frame,tag=bw_sticker] unless entity @s[nbt={Item:{id:"minecraft:filled_map",components:{"minecraft:map_id":187}}}] at @s run summon minecraft:interaction ~ ~-0.5 ~ {Tags:["bw_sticker_destroy"]}

# ... and then place the map item inside it
execute as @e[type=minecraft:item_frame,tag=bw_sticker] unless entity @s[nbt={Item:{id:"minecraft:filled_map",components:{"minecraft:map_id":187}}}] run data merge entity @s {Item:{id:"filled_map",components:{"map_id":187}}}