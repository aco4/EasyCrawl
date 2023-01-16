function ezcrawl:zz_private/info_page/clear

# If displaying info page from the menu, display back button
execute if score @s ezc.info_page matches 100.. run tellraw @s {"text":"< Back","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/function ezcrawl:menu"}]},"clickEvent":{"action":"run_command","value":"/function ezcrawl:menu"}}



tellraw @s ""
tellraw @s {"text":"EasyCrawl Angle Customization","bold":true,"underlined":true}
tellraw @s ""
tellraw @s {"text":"Green range = can begin crawling"}
tellraw @s {"text":"Red range = stop crawling"}
tellraw @s ""
tellraw @s "Point to your desired angle, then type:"
tellraw @s [{"text":" "},{"text":"/trigger setStartAngle","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"/trigger setStartAngle"}]},"clickEvent":{"action":"suggest_command","value":"/trigger setStartAngle"}},{"text":" to modify the green range"}]
tellraw @s [{"text":" "},{"text":"/trigger setStopAngle","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"/trigger setStopAngle"}]},"clickEvent":{"action":"suggest_command","value":"/trigger setStopAngle"}},{"text":" to modify the red range"}]
tellraw @s ""



scoreboard players reset @s ezc.info_page
