# Changelog

## January 2nd, 2024
Released `EasyCrawl-1.20.2`, `EasyCrawl-1.20.3`, and `EasyCrawl-1.20.4`
- Begin implementation of new versioning system (see versioning.md on GitHub for details)
- Updated respective pack formats
- Increase Health of the shulker so it doesn't die from Creative mode players
- Changed shulker vehicle from an armor stand to an area effect cloud to reduce interpolation. Fixes bug where the player can outrun the shulker.
- Reduced radius of the settings hologram so it doesn't clip into the floor while crawling
- Update Minecraft wiki site in credits from Fandom.com to minecraft.wiki
- Remove type checks from has_passenger.json and has_vehicle.json for better performance
- Updated pack.mcmeta pack format, version, and description to be consistent with "anytime, anywhere!"
- Use scoreboard ezcrawl.main for handling extraneous operations e.g. checking player pitch and air toggling. This was previously improperly delegated to ezcrawl.crawling.
- Other minor optimizations (e.g. unroll get_id.mcfunction)

## June 12th, 2023
Released EasyCrawl v18 for 1.20.1
- No changes

## June 12th, 2023
Released EasyCrawl v18 for 1.20
- Both the datapack and resourcepack are now 1.20 compatible
- It's now possible to crawl underwater and in lava (removed in_fluid requirement)
- Tick and load functions "main" and "init" have been renamed to "tick" and "load", respectively
- Renamed "has_crawl_shulker_passenger" and "riding_crawl_stand" to "has_passenger" and "has_vehicle", respectively. Additionally, they have been simplified to from an nbt check to a type check, for performance
- The kill function now modifies DeathTime to prevent any shulker death animation. Height was also lowered to -1000
- Increased the shulker's invisibility duration to 2147483647
> This update was titled **v18 1.20 Update**

## July 19th, 2022
Released EasyCrawl v17 for 1.19
- Rebranded datapack to "EasyCrawl"
- Overhauled custom settings and added a streamlined in-game editor
- Added a datapack menu and 4 info pages (Info, Settings, Help, Credits), all accessible via /function
- Reorganized most functions into a folder (zz_private) for a more user-friendly interface when searching and running /function commands
- Changed namespace from "croesus" and "cr_crawl" to just "ezcrawl"
- Changed the uninstall message to suggest /reload upon click instead of running it
- Slightly increased the height of the shulker to allow crawling up a 0.6 block incline
- Simplified pack.mcmeta "description" field
- Entities with tag "ezcrawl.fall_through_immune" do not fall through the shulker (for developers)

> This update was titled **v17 EasyCrawl Update**

## July 11th, 2022
Released Crawling Datapack v16 for 1.19
-   Texture pack fixed to not make white shulker boxes invisible
-   Various lag optimizations

> This update was titled **v16 Refinement Update**

## June 27th, 2022
Released Crawling Datapack v15 for 1.19
-   Crawling is now possible in shallow water
-   The shulker no longer remains behind when the player quits or switches dimension

> This update was titled **v15 Versatility Update**

## June 20th, 2022
Released Crawling Datapack v14 for 1.19
- Both the datapack and resourcepack have been updated to 1.19
- Players can no longer crawl in waterlogged blocks
- The shulker no longer flashes each time the player starts crawling
- Entities can no longer stand on top of the shulker. Instead, they fall through
- Various exceptional circumstance handling has been added, for increased stability
- Customization settings have been simplified

> This update was titled **v14 1.19 Update**

## November 7th, 2021
Released Crawling Datapack v13 for 1.17.1
- Added resourcepack to remove the shulker head [credit u/Ersatz_77]
- Added uninstall function
- Changed to a white shulker
- New pack.png
- Removed obsolete barrier crawling
- Removed reload message
- Lag and compatibility optimizations

> This update was titled **v13 Invisible Shulker Head Update**

> Pack format 7 suggests this datapack was made for 1.17–1.17.1
> The date heavily suggests this was made for 1.17.1 (which came out July 6, 2021)

## July 29th, 2021
Released Crawling Datapack v12 for 1.17.1
-   Updated the datapack to work with 1.17
-   Added a pack.png
-   Small performance improvements
-   Namespaced all non-trigger objectives, tags, and fake players with "cr_crawl."
-   Reload message will only show to players in Creative
-   Slightly lowered the height of the shulker
-   New experimental hybrid barrier-shulker crawling has been added.

> This update was titled **v12 1.17 Update**

> Pack format 7 suggests this datapack was made for 1.17–1.17.1
> The date suggests this was made for 1.17.1 (which came out July 6, 2021)

## August 29th, 2020
Released Crawling Datapack v11 for 1.16.2
-   Changed custom settings to work individually for each player
-   Optimizations and small bug fixes

> This update was titled **v11 Custom Settings Update**

> Pack format 6 suggests this datapack was made for 1.16.2–1.16.5
> The date suggests it was made for 1.16.2 (which came out August 11, 2020)

## August 28th, 2020
Released Crawling Datapack v10 for 1.16.2
-   Added customization settings.
-   Improved transitions between crawl mode and exiting
-   Minor improvements (small lag optimizations, etc.)

Coming soon (maybe):

-   Customization GUI
-   Adding barriers above the player instead of a shulker for better invisibility. (Perhaps as a setting?)
-   Resource pack to remove the shulker head
-   Datapacks for older versions
-   pack.png

> This update was titled **v10 Custom Settings Update**

> Pack format 6 suggests this datapack was made for 1.16.2–1.16.5
> The date suggests it was made for 1.16.2 (which came out August 11, 2020)

## August 27th, 2020
Released Crawling Datapack v9 for 1.16.2
-   Added the ability to crawl on all blocks.
-   Added smoother transitions when going into crawl mode or exiting
-   Added easier toggling of crawling on/off
-   Multiplayer compatibility should have improved. Requires testing.
-   Crawling is now on by default.
-   Removed full shulker invisibility, in return for better reliability and flexibility.

Coming soon (maybe):

- List item
- In-Game customization (Ability to modify the angle that you start crawling/toggling standing up when looking upwards/etc.)
- Adding barriers above the player instead of a shulker for better invisibility. (Perhaps as a setting?)
- Resource pack to remove the shulker head

> This update was titled **v9 1.16 Update**

> Pack format 6 suggests this datapack was made for 1.16.2–1.16.5
> The date suggests it was made for 1.16.2 (which came out August 11, 2020)

## June 9th, 2020
Released Crawling Datapack v8 for 1.15.2
- Fixed multiplayer bug involving shulkers appearing above the player.

## June 4th, 2020
Released Crawling Datapack v7 for 1.15.2
-   Completely rewrote the datapack
-   Crawling now works on slabs and other non-full-height blocks. (excluding campfires, turtle eggs, and sea pickles with 4 pickles. To be exact, any block height between 0.4 to 0.5)
-   Now possible to disable/enable crawling with "/trigger toggleCrawl set 0" and /trigger toggleCrawl set 1", respectively.
-   Better Multiplayer compatibility. (Needs more testing)
-   Barriers are removed from the datapack altogether.
-   Better detection for when the player starts and stops crawling.
-   Shulkers are now 100% invisible.
-   You no longer need to turn your head all the way down to start crawling.
-   You can look upwards to stop crawling, in addition to jumping.
-   It is now possible to crawl in water and lava, as long as you are on the ground.

## February 10th, 2020
Released Crawling Datapack v6 for 1.15.2
-   No longer works when in spectator mode
-   Fixed shulker spam appearing above you when trying to crawl while already crawling

## November 3rd, 2019
Released Crawling Datapack v5 for 1.14.4
- Fixed annoying buggy movement when sneaking and looking over a ledge

## October 2nd, 2019
Released Crawling Datapack v4 for 1.14.4
-   Moved the function into a tick.json file
-   Attempting to crawl on slabs or onto slabs will no longer glitch out (you still cannot crawl on them.)
-   Crawling in caves, or more specifically, "cave_air", works.
-   Fixed trying to stand up and crawl at the same time. Note: This is not patched when you attempt this in a non-solid block such as a torch or tall_grass.
-   Removed floating shulkers appearing

## August 30th, 2019
Released Crawling Datapack v3 for 1.14.4
-   You can no longer crawl underwater
-   Crawling into water doesn't work, either

## August 15th, 2019
Released Crawling Datapack v2 for 1.14.4
- Crawling will not activate while the player is flying / falling
- Crawling works while moving under non-solid blocks such as torches and tall-grass
- Shulkers do not drop loot when killed in creative
- Shulkers are no longer visible while looking up (non-solid blocks are an exception)
- Multiplayer compatible

## August 8th, 2019
Released Crawling Datapack v1 for 1.14.4
- Original release
