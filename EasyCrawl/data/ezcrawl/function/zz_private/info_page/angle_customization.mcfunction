function ezcrawl:zz_private/info_page/clear

# If displaying info page from the menu, display back button
execute if score @s ezcrawl.info_page matches 100.. run tellraw @s {"bold":true,"click_event":{"action":"run_command","command":"/function ezcrawl:menu"},"hover_event":{"action":"show_text","contents":[{"text":"/function ezcrawl:menu"}],"value":[{"text":""}]},"text":"< Back"}



tellraw @s ""
tellraw @s {"text":"EasyCrawl Angle Customization","bold":true,"underlined":true}
tellraw @s ""
tellraw @s {"text":"Green range = can begin crawling"}
tellraw @s {"text":"Red range = stop crawling"}
tellraw @s ""
tellraw @s "Point to your desired angle, then type:"
tellraw @s [" ",{"click_event":{"action":"suggest_command","command":"/trigger setCrawlStartAngle"},"color":"green","hover_event":{"action":"show_text","contents":[{"text":"/trigger setCrawlStartAngle"}],"value":[{"text":""}]},"text":"/trigger setCrawlStartAngle"}," to modify the green range"]
tellraw @s [" ",{"click_event":{"action":"suggest_command","command":"/trigger setCrawlStopAngle"},"color":"green","hover_event":{"action":"show_text","contents":[{"text":"/trigger setCrawlStopAngle"}],"value":[{"text":""}]},"text":"/trigger setCrawlStopAngle"}," to modify the red range"]
tellraw @s ""



scoreboard players reset @s ezcrawl.info_page
