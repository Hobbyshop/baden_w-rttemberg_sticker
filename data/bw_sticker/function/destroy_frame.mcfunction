# if the interaction box was punched we play a sound...
execute as @e[type=minecraft:interaction,tag=bw_sticker_destroy] at @s on attacker run playsound minecraft:entity.glow_item_frame.break block @a ~ ~ ~

# ...drop the sticker as an item...
execute as @e[type=minecraft:interaction,tag=bw_sticker_destroy] at @s on attacker run summon item ~ ~ ~ {Item:{id:item_frame,components:{item_name:"Sticker",entity_data:{id:item_frame,Tags:[bw_sticker],Invisible:true}}}}

# ...and delete the interaction box and the item frame
execute as @e[type=minecraft:interaction,tag=bw_sticker_destroy] at @s on attacker run execute as @e[type=minecraft:item_frame,tag=bw_sticker,sort=nearest,limit=1] run kill @s
execute as @e[type=minecraft:interaction,tag=bw_sticker_destroy] at @s on attacker run execute as @e[type=minecraft:interaction,tag=bw_sticker_destroy,sort=nearest,limit=1] run kill @s

# we also remove the attack data for every tick
execute as @e[type=minecraft:interaction,tag=bw_sticker_destroy] run data remove entity @s attack