scoreboard players reset @s ezcrawl.info_page

function ezcrawl:zz_private/info_page/clear

tellraw @s ""
tellraw @s {"text":"EasyCrawl Menu","bold":true,"underlined":true}
tellraw @s ""
tellraw @s {"bold":true,"click_event":{"action":"run_command","command":"/scoreboard players set @s ezcrawl.info_page 101"},"color":"green","hover_event":{"action":"show_text","contents":[{"text":"/function ezcrawl:info"}],"value":[{"text":""}]},"text":"[Info]"}
tellraw @s ""
tellraw @s {"bold":true,"click_event":{"action":"run_command","command":"/scoreboard players set @s ezcrawl.info_page 102"},"color":"green","hover_event":{"action":"show_text","contents":[{"text":"/function ezcrawl:settings"}],"value":[{"text":""}]},"text":"[Settings]"}
tellraw @s ""
tellraw @s {"bold":true,"click_event":{"action":"run_command","command":"/scoreboard players set @s ezcrawl.info_page 103"},"color":"green","hover_event":{"action":"show_text","contents":[{"text":"/function ezcrawl:help"}],"value":[{"text":""}]},"text":"[Help]"}
tellraw @s ""
tellraw @s {"bold":true,"click_event":{"action":"run_command","command":"/scoreboard players set @s ezcrawl.info_page 104"},"color":"green","hover_event":{"action":"show_text","contents":[{"text":"/function ezcrawl:credits"}],"value":[{"text":""}]},"text":"[Credits]"}
tellraw @s ""
tellraw @s {"bold":true,"click_event":{"action":"run_command","command":"/function ezcrawl:uninstall"},"color":"dark_red","hover_event":{"action":"show_text","contents":[{"text":"/function ezcrawl:uninstall"}],"value":[{"text":""}]},"text":"[UNINSTALL]"}
tellraw @s ""
