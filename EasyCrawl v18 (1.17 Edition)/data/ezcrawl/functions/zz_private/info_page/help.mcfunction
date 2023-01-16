function ezcrawl:zz_private/info_page/clear

# If displaying info page from the menu, display back button
execute if score @s ezc.info_page matches 100.. run tellraw @s {"text":"< Back","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/function ezcrawl:menu"}]},"clickEvent":{"action":"run_command","value":"/function ezcrawl:menu"}}



tellraw @s ""
tellraw @s {"text":"EasyCrawl Help","bold":true,"underlined":true}
tellraw @s ""
tellraw @s "To crawl, look down and sneak. To stand up, press space or look up."
tellraw @s ""
tellraw @s [{"text":"To reset the datapack, run "},{"text":"/function ezcrawl:uninstall","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"/function ezcrawl:uninstall"}]},"clickEvent":{"action":"suggest_command","value":"/function ezcrawl:uninstall"}},{"text":" and then "},{"text":"/reload","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"/reload"}]},"clickEvent":{"action":"suggest_command","value":"/reload"}},{"text":"."}]
tellraw @s ""
tellraw @s [{"text":"Contact the developer of this datapack by leaving a comment on the "},{"text":"offical page","color":"blue","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"https://www.planetminecraft.com/data-pack/crawling-datapack/"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/crawling-datapack/"}},{"text":"."}]



scoreboard players reset @s ezc.info_page
