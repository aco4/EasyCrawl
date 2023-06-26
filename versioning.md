# EasyCrawl Versioning
EasyCrawl's versioning system makes three adaptations upon the official [Semantic Versioning Specification](https://semver.org/):

**1. Add Minecraft version**

To identify the Minecraft version the datapack was made for

**2. Add `v` to version number**

To help distinguish the Minecraft version from the datapack version.

**3. Introduce `bpt` keyword**

To indicate backwards-support versions

## General Format
`MCVERSION-vMAJOR.MINOR.PATCH`

- `MCVERSION` = The Minecraft version the datapack was made for
- `MAJOR` = Increment for breaking changes that require uninstallation of the previous version
- `MINOR` = Increment for feature updates that can be installed by a simple file swap and /reload
- `PATCH` = Increment for bugfixes, pack increases, and performance optimizations

```
                            🡡
                      1.20.1-v3.2.0             🡡
                            │           1.19.4-bpt-v3.1.0
                      1.19.4-v3.0.3 ────────────┘
        🡡                   │
1.18.2-bpt-v3.4.1           │                   🡡
1.18.2-bpt-v2.2.1           │           1.17.1-bpt-v2.3.1
        └──────────── 1.18.2-v2.2.0     1.17.1-bpt-v2.0.0
                            │           1.17.1-bpt-v1.4.2
                      1.17.1-v1.3.2 ────────────┘
                            │
```
