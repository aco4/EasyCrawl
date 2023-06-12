# Changelog

## easycrawl-1.20.1-v18
June 12, 2023
> No changes (Identical to easycrawl-1.20-v18)

## easycrawl-1.19.4-v18
June 12, 2023
> Backwards compatible version of easycrawl-1.20-v18
- Changed datapack format from 15 to 12
- Changed resourcepack format from 15 to 13

## easycrawl-1.20-v18
June 12, 2023
- It's now possible to crawl underwater and in lava (removed in_fluid requirement)
- Tick and load functions "main" and "init" have been renamed to "tick" and "load", respectively
- Renamed "has_crawl_shulker_passenger" and "riding_crawl_stand" to "has_passenger" and "has_vehicle", respectively. Additionally, they have been simplified to from an nbt check to a type check, for performance
- The kill function now modifies DeathTime to prevent any shulker death animation. Height was also lowered to -1000
- Increased the shulker's invisibility duration to 2147483647

## easycrawl-1.18.2-v17
July 19th, 2022
> Backwards compatible version of easycrawl-1.19-v17
- Unrecorded changes

## easycrawl-1.19-v17
July 19th, 2022
-   Rebranded datapack to "EasyCrawl"
-   Overhauled custom settings and added a streamlined in-game editor
-   Added a datapack menu and 4 info pages (Info, Settings, Help, Credits), all accessible via /function
-   Reorganized most functions into a folder (zz_private) for a more user-friendly interface when searching and running /function commands
-   Changed namespace from "croesus" and "cr_crawl" to just "ezcrawl"
-   Changed the uninstall message to suggest /reload upon click instead of running it
-   Slightly increased the height of the shulker to allow crawling up a 0.6 block incline
-   Simplified pack.mcmeta "description" field
-   Entities with tag "ezcrawl.fall_through_immune" do not fall through the shulker (for developers)