function ezcrawl:zz_private/info_page/clear

# If displaying info page from the menu, display back button
execute if score @s ezcrawl.info_page matches 100.. run tellraw @s {"bold":true,"click_event":{"action":"run_command","command":"/function ezcrawl:menu"},"hover_event":{"action":"show_text","contents":[{"text":"/function ezcrawl:menu"}],"value":[{"text":""}]},"text":"< Back"}



tellraw @s ""
tellraw @s {"text":"EasyCrawl Help","bold":true,"underlined":true}
tellraw @s ""
tellraw @s "To crawl, look down and sneak. To stand up, press space or look up."
tellraw @s ""
tellraw @s ["To reset the datapack, run ",{"click_event":{"action":"suggest_command","command":"/function ezcrawl:uninstall"},"color":"red","hover_event":{"action":"show_text","contents":[{"text":"/function ezcrawl:uninstall"}],"value":[{"text":""}]},"text":"/function ezcrawl:uninstall"}," and then ",{"click_event":{"action":"suggest_command","command":"/reload"},"color":"red","hover_event":{"action":"show_text","contents":[{"text":"/reload"}],"value":[{"text":""}]},"text":"/reload"},"."]
tellraw @s ""
tellraw @s ["Contact the developer of this datapack by leaving a comment on the ",{"click_event":{"action":"open_url","url":"https://www.planetminecraft.com/data-pack/crawling-datapack/"},"color":"blue","hover_event":{"action":"show_text","contents":[{"text":"https://www.planetminecraft.com/data-pack/crawling-datapack/"}],"value":[{"text":""}]},"text":"offical page","underlined":true},"."]



scoreboard players reset @s ezcrawl.info_page
