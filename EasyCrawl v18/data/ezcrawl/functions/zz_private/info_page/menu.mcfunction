scoreboard players reset @s ezcrawl.info_page

function ezcrawl:zz_private/info_page/clear

tellraw @s ""
tellraw @s {"text":"EasyCrawl Menu","bold":true,"underlined":true}
tellraw @s ""
tellraw @s [{"text":"[Info]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/function ezcrawl:info"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s ezcrawl.info_page 101"}}]
tellraw @s ""
tellraw @s [{"text":"[Settings]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/function ezcrawl:settings"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s ezcrawl.info_page 102"}}]
tellraw @s ""
tellraw @s [{"text":"[Help]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/function ezcrawl:help"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s ezcrawl.info_page 103"}}]
tellraw @s ""
tellraw @s [{"text":"[Credits]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/function ezcrawl:credits"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s ezcrawl.info_page 104"}}]
tellraw @s ""
tellraw @s [{"text":"[UNINSTALL]","color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/function ezcrawl:uninstall"}]},"clickEvent":{"action":"run_command","value":"/function ezcrawl:uninstall"}}]
tellraw @s ""
