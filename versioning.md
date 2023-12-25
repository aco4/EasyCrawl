# EasyCrawl Versioning

Datapack filenames follow the general format:

`easycrawl-MCVERSION-UPDATE`

- `MCVERSION` = The Minecraft version the datapack was made for.
- `UPDATE` = The datapack version starting at `a`. Subsequent updates to the same Minecraft version are labeled `b`, then `c`, and so on.

## Examples

- `easycrawl-1.19.4-a` is the first version made for Minecraft 1.19.4

- `easycrawl-1.19.4-b` is an updated version of the previous

- `easycrawl-1.20.1-a` is the first version made for Minecraft 1.20.1

## Details

In December 2023, EasyCrawl switched from a datapack-centric versioning system to a Minecraft-centric system.

### User-friendliness
Does the user need to know that the datapack is on its 19th iteration? No — they only need to know what Minecraft version it works on. So instead of `1.20.2-v19`, it's now `1.20.2-a`. Subsequent updates to the same Minecraft version are labeled `1.20.2-b`, then `1.20.2-c`, and so on.

### Multi-version development
Datapack-centric versioning causes issues when supporting multiple Minecraft versions. Which is the most updated? `1.17.1-v12` or `1.19.4-v11`? It's hard to say. With a Minecraft-centric system, it's easy. Pick your Minecraft version (e.g. 1.16.5) and then locate the latest update (e.g. `c`).
