function ezcrawl:zz_private/info_page/clear

# If displaying info page from the menu, display back button
execute if score @s ezcrawl.info_page matches 100.. run tellraw @s {"bold":true,"click_event":{"action":"run_command","command":"/function ezcrawl:menu"},"hover_event":{"action":"show_text","contents":[{"text":"/function ezcrawl:menu"}],"value":[{"text":""}]},"text":"< Back"}



tellraw @s ""
tellraw @s {"text":"EasyCrawl Credits","bold":true,"underlined":true}
tellraw @s ""
tellraw @s "Thank you u/Ersatz_77 (Reddit) for describing how to make shulker heads invisible."
tellraw @s ""
tellraw @s "Huge thanks to Misode (GitHub) and mcstacker.net for providing their amazing generators. Your services power the datapack community."
tellraw @s ""
tellraw @s "Thanks to Cloud Wolf (YouTube) for teaching how to link entities, as well as numerous other datapacking techniques."
tellraw @s ""
tellraw @s "Finally, thanks to the Minecraft Commands community (Discord), the Arqade community (Stack Exchange), and the Minecraft Wiki (minecraft.wiki) for providing invaluable help and information whenever I needed it."
tellraw @s ""



scoreboard players reset @s ezcrawl.info_page
