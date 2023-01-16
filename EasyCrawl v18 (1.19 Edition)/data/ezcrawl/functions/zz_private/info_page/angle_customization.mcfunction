function ezcrawl:zz_private/info_page/clear

# If displaying info page from the menu, display back button
execute if score @s ezcrawl.info_page matches 100.. run tellraw @s {"text":"< Back","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/function ezcrawl:menu"}]},"clickEvent":{"action":"run_command","value":"/function ezcrawl:menu"}}



tellraw @s ""
tellraw @s {"text":"EasyCrawl Angle Customization","bold":true,"underlined":true}
tellraw @s ""
tellraw @s {"text":"Green range = can begin crawling"}
tellraw @s {"text":"Red range = stop crawling"}
tellraw @s ""
tellraw @s "Point to your desired angle, then type:"
tellraw @s [{"text":" "},{"text":"/trigger setCrawlStartAngle","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"/trigger setCrawlStartAngle"}]},"clickEvent":{"action":"suggest_command","value":"/trigger setCrawlStartAngle"}},{"text":" to modify the green range"}]
tellraw @s [{"text":" "},{"text":"/trigger setCrawlStopAngle","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"/trigger setCrawlStopAngle"}]},"clickEvent":{"action":"suggest_command","value":"/trigger setCrawlStopAngle"}},{"text":" to modify the red range"}]
tellraw @s ""



scoreboard players reset @s ezcrawl.info_page
