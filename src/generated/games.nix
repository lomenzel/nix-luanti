{ mkMinetestGame }:
{
  "minetest_game" = mkMinetestGame {
    name = "minetest_game";
    release = 26729;
    hash = "098c90x506ia06kfyps9fcbybvjjg335rpxa3cm96dcrmhd6bgcb";
    author = "Minetest";
    provides = [
      "beds"
      "binoculars"
      "boats"
      "bones"
      "bucket"
      "butterflies"
      "carts"
      "creative"
      "default"
      "doors"
      "dungeon_loot"
      "dye"
      "env_sounds"
      "farming"
      "fire"
      "fireflies"
      "flowers"
      "game_commands"
      "give_initial_stuff"
      "keys"
      "map"
      "mtg_craftguide"
      "player_api"
      "screwdriver"
      "sethome"
      "sfinv"
      "spawn"
      "stairs"
      "tnt"
      "vessels"
      "walls"
      "weather"
      "wool"
      "xpanes"
    ];
    depends = [ ];
  };
  "mineclone2" = mkMinetestGame {
    name = "mineclone2";
    release = 25617;
    hash = "05f6kd2f4lhshl04m1878inqsjcw0v7i1676nlrjy4gpg9894pvj";
    author = "Wuzzy";
    provides = [
      "_mcl_autogroup"
      "awards"
      "biomeinfo"
      "controls"
      "doc"
      "doc_identifier"
      "doc_items"
      "findbiome"
      "flowlib"
      "hudbars"
      "lightning"
      "mcl_achievements"
      "mcl_amethyst"
      "mcl_anvils"
      "mcl_armor"
      "mcl_armor_stand"
      "mcl_attached"
      "mcl_autogroup"
      "mcl_bamboo"
      "mcl_banners"
      "mcl_barrels"
      "mcl_beacons"
      "mcl_beds"
      "mcl_beehives"
      "mcl_bells"
      "mcl_biomes"
      "mcl_blackstone"
      "mcl_blast_furnace"
      "mcl_boats"
      "mcl_books"
      "mcl_bossbars"
      "mcl_bows"
      "mcl_brewing"
      "mcl_buckets"
      "mcl_burning"
      "mcl_cake"
      "mcl_campfires"
      "mcl_cartography_table"
      "mcl_cauldrons"
      "mcl_cherry_blossom"
      "mcl_chests"
      "mcl_clock"
      "mcl_cocoas"
      "mcl_colorblocks"
      "mcl_colors"
      "mcl_commands"
      "mcl_comparators"
      "mcl_compass"
      "mcl_composters"
      "mcl_compressed_blocks"
      "mcl_copper"
      "mcl_core"
      "mcl_craftguide"
      "mcl_crafting_table"
      "mcl_credits"
      "mcl_crimson"
      "mcl_criticals"
      "mcl_damage"
      "mcl_death_drop"
      "mcl_death_messages"
      "mcl_deepslate"
      "mcl_dispensers"
      "mcl_doc"
      "mcl_doc_basics"
      "mcl_doors"
      "mcl_dripping"
      "mcl_droppers"
      "mcl_dungeons"
      "mcl_dye"
      "mcl_enchanting"
      "mcl_end"
      "mcl_end_island"
      "mcl_entity_invs"
      "mcl_events"
      "mcl_experience"
      "mcl_explosions"
      "mcl_falling_nodes"
      "mcl_farming"
      "mcl_fences"
      "mcl_fire"
      "mcl_fireworks"
      "mcl_fishing"
      "mcl_fletching_table"
      "mcl_flowerpots"
      "mcl_flowers"
      "mcl_formspec"
      "mcl_formspec_prepend"
      "mcl_fovapi"
      "mcl_furnaces"
      "mcl_gamemode"
      "mcl_grindstone"
      "mcl_hamburger"
      "mcl_hbarmor"
      "mcl_heads"
      "mcl_honey"
      "mcl_hoppers"
      "mcl_hunger"
      "mcl_info"
      "mcl_init"
      "mcl_inventory"
      "mcl_item_entity"
      "mcl_item_id"
      "mcl_itemframes"
      "mcl_jukebox"
      "mcl_lanterns"
      "mcl_lectern"
      "mcl_lightning_rods"
      "mcl_loom"
      "mcl_loot"
      "mcl_luck"
      "mcl_mangrove"
      "mcl_mapgen_core"
      "mcl_maps"
      "mcl_meshhand"
      "mcl_minecarts"
      "mcl_mobitems"
      "mcl_mobs"
      "mcl_mobspawners"
      "mcl_monster_eggs"
      "mcl_moon"
      "mcl_mud"
      "mcl_mushrooms"
      "mcl_music"
      "mcl_nether"
      "mcl_nether_fortresses"
      "mcl_observers"
      "mcl_ocean"
      "mcl_offhand"
      "mcl_oxidation"
      "mcl_paintings"
      "mcl_particles"
      "mcl_player"
      "mcl_playerinfo"
      "mcl_playerplus"
      "mcl_portals"
      "mcl_potions"
      "mcl_privs"
      "mcl_raids"
      "mcl_raw_ores"
      "mcl_sculk"
      "mcl_shepherd"
      "mcl_shields"
      "mcl_signs"
      "mcl_skins"
      "mcl_smithing_table"
      "mcl_smoker"
      "mcl_sounds"
      "mcl_spawn"
      "mcl_sponges"
      "mcl_sprint"
      "mcl_spyglass"
      "mcl_stairs"
      "mcl_starting_inventory"
      "mcl_stonecutter"
      "mcl_strongholds"
      "mcl_structures"
      "mcl_sus_stew"
      "mcl_target"
      "mcl_temp_helper_recipes"
      "mcl_terrain_features"
      "mcl_throwing"
      "mcl_title"
      "mcl_tnt"
      "mcl_tools"
      "mcl_torches"
      "mcl_totems"
      "mcl_tt"
      "mcl_util"
      "mcl_ver_info"
      "mcl_villages"
      "mcl_void_damage"
      "mcl_walls"
      "mcl_weather"
      "mcl_wieldview"
      "mcl_wip"
      "mcl_wither_spawning"
      "mcl_wool"
      "mcl_worlds"
      "mcl_zombie_sieges"
      "mclx_core"
      "mclx_fences"
      "mclx_stairs"
      "mesecons"
      "mesecons_alias"
      "mesecons_button"
      "mesecons_commandblock"
      "mesecons_delayer"
      "mesecons_lightstone"
      "mesecons_mvps"
      "mesecons_noteblock"
      "mesecons_pistons"
      "mesecons_pressureplates"
      "mesecons_solarpanel"
      "mesecons_torch"
      "mesecons_walllever"
      "mesecons_wires"
      "mobs_mc"
      "playerphysics"
      "screwdriver"
      "show_wielded_item"
      "tga_encoder"
      "tsm_railcorridors"
      "tt"
      "vl_held_item"
      "vl_hollow_logs"
      "walkover"
      "xpanes"
    ];
    depends = [ ];
  };
  "backroomtest" = mkMinetestGame {
    name = "backroomtest";
    release = 26182;
    hash = "114lzi9wby680smca80rwk3cbnhibr3khkgcg4lmxy5g2p3381nc";
    author = "Sumianvoice";
    provides = [
      "br_154"
      "br_core"
      "br_player_model"
      "br_playerphysics"
      "br_sprint"
      "nabm_biomes"
      "nabm_liquids"
      "nabm_mapgen"
      "nabm_stone"
      "nl_fog"
      "penumbra"
      "player_info"
      "pmb_node_update"
      "pmb_util"
      "wield3d"
      "world_storage"
    ];
    depends = [ ];
  };
  "regulus_mtgamejam_2023" = mkMinetestGame {
    name = "regulus_mtgamejam_2023";
    release = 23093;
    hash = "08m6kf6615xr0a365glkww8a2ckrv9bx9xkq5fsgjp040ak09783";
    author = "regulus";
    provides = [
      "regulus_achievements"
      "regulus_admintools"
      "regulus_gui"
      "regulus_mapgen"
      "regulus_mobs"
      "regulus_nodes"
      "regulus_player"
      "regulus_portcullis"
      "regulus_powerups"
      "regulus_story"
      "regulus_tools"
    ];
    depends = [ ];
  };
  "citadel" = mkMinetestGame {
    name = "citadel";
    release = 26596;
    hash = "0w6rs9miahs571p0m0akyhsvfnvpgx1hcl4rlglfbi1g0xijfk2k";
    author = "_Irevol_";
    provides = [
      "citadel_core"
      "citadel_timer"
      "xpanes"
    ];
    depends = [ ];
  };
  "mineclonia" = mkMinetestGame {
    name = "mineclonia";
    release = 26695;
    hash = "1qggkhma11lg8x3xkb77rwfnxaazljpmrbp7xy97897d1k85b179";
    author = "ryvnf";
    provides = [
      "_mcl_autogroup"
      "awards"
      "controls"
      "doc"
      "doc_identifier"
      "doc_items"
      "findbiome"
      "flowlib"
      "hudbars"
      "mcl2mcla_aliases"
      "mcl_achievements"
      "mcl_amethyst"
      "mcl_anvils"
      "mcl_armor"
      "mcl_armor_stand"
      "mcl_attached"
      "mcl_autogroup"
      "mcl_bamboo"
      "mcl_banners"
      "mcl_barrels"
      "mcl_base_textures"
      "mcl_beacons"
      "mcl_beds"
      "mcl_beehives"
      "mcl_bells"
      "mcl_biomes"
      "mcl_blackstone"
      "mcl_blast_furnace"
      "mcl_boats"
      "mcl_bone_meal"
      "mcl_bonus_chest"
      "mcl_books"
      "mcl_bossbars"
      "mcl_bows"
      "mcl_brewing"
      "mcl_buckets"
      "mcl_burning"
      "mcl_cake"
      "mcl_campfires"
      "mcl_cartography_table"
      "mcl_cauldrons"
      "mcl_charges"
      "mcl_cherry_blossom"
      "mcl_chests"
      "mcl_clock"
      "mcl_cocoas"
      "mcl_colorblocks"
      "mcl_colors"
      "mcl_commands"
      "mcl_comparators"
      "mcl_compass"
      "mcl_composters"
      "mcl_conduits"
      "mcl_copper"
      "mcl_core"
      "mcl_craftguide"
      "mcl_crafting_table"
      "mcl_credits"
      "mcl_crimson"
      "mcl_criticals"
      "mcl_damage"
      "mcl_death_drop"
      "mcl_death_messages"
      "mcl_deepslate"
      "mcl_dispensers"
      "mcl_doc"
      "mcl_doc_basics"
      "mcl_doors"
      "mcl_dripping"
      "mcl_droppers"
      "mcl_dungeons"
      "mcl_dye"
      "mcl_dyes"
      "mcl_enchanting"
      "mcl_end"
      "mcl_end_island"
      "mcl_entity_invs"
      "mcl_events"
      "mcl_experience"
      "mcl_explosions"
      "mcl_falling_nodes"
      "mcl_farming"
      "mcl_fences"
      "mcl_fire"
      "mcl_fireworks"
      "mcl_fishing"
      "mcl_fletching_table"
      "mcl_flowerpots"
      "mcl_flowers"
      "mcl_formspec"
      "mcl_formspec_prepend"
      "mcl_furnaces"
      "mcl_gamemode"
      "mcl_grindstone"
      "mcl_hbarmor"
      "mcl_heads"
      "mcl_honey"
      "mcl_hoppers"
      "mcl_hunger"
      "mcl_info"
      "mcl_init"
      "mcl_inventory"
      "mcl_item_entity"
      "mcl_itemframes"
      "mcl_itemframes_compat"
      "mcl_jukebox"
      "mcl_lanterns"
      "mcl_lectern"
      "mcl_lightning"
      "mcl_lightning_rods"
      "mcl_loom"
      "mcl_loot"
      "mcl_lush_caves"
      "mcl_mangrove"
      "mcl_mapgen_core"
      "mcl_maps"
      "mcl_meshhand"
      "mcl_minecarts"
      "mcl_mobitems"
      "mcl_mobs"
      "mcl_mobs_compat"
      "mcl_mobspawners"
      "mcl_monster_eggs"
      "mcl_moon"
      "mcl_mud"
      "mcl_mushrooms"
      "mcl_nether"
      "mcl_nether_fortresses"
      "mcl_observers"
      "mcl_ocean"
      "mcl_offhand"
      "mcl_paintings"
      "mcl_panes"
      "mcl_player"
      "mcl_playerinfo"
      "mcl_portals"
      "mcl_potions"
      "mcl_pottery_sherds"
      "mcl_privs"
      "mcl_raids"
      "mcl_raw_ores"
      "mcl_sculk"
      "mcl_shields"
      "mcl_signs"
      "mcl_signs_compat"
      "mcl_skins"
      "mcl_smithing_table"
      "mcl_smoker"
      "mcl_sounds"
      "mcl_spawn"
      "mcl_sponges"
      "mcl_sprint"
      "mcl_spyglass"
      "mcl_stairs"
      "mcl_stonecutter"
      "mcl_strongholds"
      "mcl_structures"
      "mcl_sus_nodes"
      "mcl_sus_stew"
      "mcl_target"
      "mcl_temp_helper_recipes"
      "mcl_terrain_features"
      "mcl_throwing"
      "mcl_title"
      "mcl_tnt"
      "mcl_tools"
      "mcl_torches"
      "mcl_totems"
      "mcl_trees"
      "mcl_tt"
      "mcl_util"
      "mcl_villages"
      "mcl_void_damage"
      "mcl_walls"
      "mcl_weather"
      "mcl_wieldview"
      "mcl_wip"
      "mcl_wither_spawning"
      "mcl_wool"
      "mcl_worlds"
      "mcl_zombie_sieges"
      "mclx_core"
      "mclx_fences"
      "mclx_stairs"
      "mesecons"
      "mesecons_button"
      "mesecons_commandblock"
      "mesecons_delayer"
      "mesecons_lightstone"
      "mesecons_mvps"
      "mesecons_noteblock"
      "mesecons_pistons"
      "mesecons_pressureplates"
      "mesecons_solarpanel"
      "mesecons_torch"
      "mesecons_walllever"
      "mesecons_wires"
      "mobs_mc"
      "playerphysics"
      "screwdriver"
      "show_wielded_item"
      "tga_encoder"
      "tsm_railcorridors"
      "tt"
      "walkover"
    ];
    depends = [ ];
  };
  "nodecore" = mkMinetestGame {
    name = "nodecore";
    release = 26973;
    hash = "12bxn392xbw91vv2r3h3hs1v1za9v4mzlqgf5vdrmrmp20jk727j";
    author = "Warr1024";
    provides = [
      "nc_api"
      "nc_api_active"
      "nc_api_all"
      "nc_api_craft"
      "nc_api_ents"
      "nc_api_hints"
      "nc_api_hud"
      "nc_api_loose"
      "nc_api_storebox"
      "nc_api_visinv"
      "nc_concrete"
      "nc_doors"
      "nc_envsound"
      "nc_fire"
      "nc_flora"
      "nc_igneous"
      "nc_items"
      "nc_lantern"
      "nc_lode"
      "nc_loot"
      "nc_lux"
      "nc_nodefall"
      "nc_optics"
      "nc_player_gui"
      "nc_player_hand"
      "nc_player_health"
      "nc_player_hud"
      "nc_player_model"
      "nc_player_names"
      "nc_player_pickup"
      "nc_player_setup"
      "nc_player_sky"
      "nc_player_wield"
      "nc_player_yctiwy"
      "nc_scaling"
      "nc_sponge"
      "nc_stonework"
      "nc_terrain"
      "nc_torch"
      "nc_tote"
      "nc_tree"
      "nc_woodwork"
      "nc_writing"
    ];
    depends = [ ];
  };
  "glitch" = mkMinetestGame {
    name = "glitch";
    release = 25918;
    hash = "11d588cl1m3flayv1ssj3r41v5952bmfrdn84wimak03k49gkpks";
    author = "Wuzzy";
    provides = [
      "glitch_abilities"
      "glitch_ambience"
      "glitch_check_movement_settings"
      "glitch_dialog"
      "glitch_editor"
      "glitch_entities"
      "glitch_game_meta"
      "glitch_gui"
      "glitch_hand"
      "glitch_inventory_formspec"
      "glitch_levels"
      "glitch_logo"
      "glitch_no_drop"
      "glitch_no_multiplayer"
      "glitch_nodeboxes"
      "glitch_nodes"
      "glitch_npcs"
      "glitch_player"
      "glitch_screen"
      "glitch_sky"
      "glitch_sounds"
      "glitch_static_timeofday"
      "glitch_utils"
      "playerphysics"
    ];
    depends = [ ];
  };
  "subway_miner" = mkMinetestGame {
    name = "subway_miner";
    release = 24722;
    hash = "192fh4zlx1vf6bsqx39s1jmgslspw8gibzs8z09wiac3x15lvx6z";
    author = "AFCM";
    provides = [
      "sm_game"
      "sm_mapnodes"
    ];
    depends = [ ];
  };
  "mesecraft" = mkMinetestGame {
    name = "mesecraft";
    release = 22175;
    hash = "0vp9rzv68kkasyd286242q49abp616g860z1qx07dhnhw99618fb";
    author = "MeseCraft";
    provides = [
      "24hr_clock"
      "3d_armor"
      "3d_armor_flyswim"
      "3d_armor_sfinv"
      "3d_armor_stand"
      "afk"
      "awards"
      "basic_materials"
      "bees"
      "bell"
      "big_webs"
      "boats"
      "bonemeal"
      "bones_loot"
      "builtin_item"
      "bulletin_boards"
      "bweapons_api"
      "bweapons_bows_pack"
      "bweapons_firearms_pack"
      "bweapons_hitech_pack"
      "bweapons_magic_pack"
      "bweapons_utility_pack"
      "candles"
      "carpets"
      "carts"
      "castle"
      "cblocks"
      "ccompass"
      "chasms"
      "chat_colorize"
      "cleaner"
      "climate_api"
      "cloudlands"
      "commoditymarket"
      "commoditymarket_fantasy"
      "compost"
      "controls"
      "craftguide"
      "crafting_bench"
      "creative"
      "curtains"
      "death_compass"
      "decoblocks"
      "decorations_sea"
      "default"
      "df_achievements"
      "df_ambience"
      "df_caverns"
      "df_dependencies"
      "df_farming"
      "df_mapitems"
      "df_primordial_items"
      "df_trees"
      "df_underworld_items"
      "digilines"
      "doors"
      "drawers"
      "drinks"
      "dungeon_loot"
      "dye"
      "dynamic_liquid"
      "elevator"
      "emoji"
      "env_sounds"
      "extra_doors"
      "fancy_vend"
      "farming"
      "fire"
      "fire_plus"
      "fireflies"
      "floodables"
      "flowers"
      "footprints"
      "fruit_tools"
      "gadgets_api"
      "gadgets_consumables"
      "gadgets_default_effects"
      "gadgets_magic"
      "game_commands"
      "geomoria"
      "geomoria_lootchests"
      "give_initial_stuff"
      "gramophone"
      "hangglider"
      "hbarmor"
      "hbhunger"
      "headanim"
      "helicopter"
      "hidden_doors"
      "hopper"
      "hudbars"
      "hunter_statue"
      "ice_sprites"
      "ingots"
      "item_drop"
      "itemframes"
      "keys"
      "leaves_in_the_wind"
      "led_marquee"
      "lightning"
      "looped_node_sound"
      "lootchests"
      "lootchests_default"
      "lootchests_magic_materials"
      "magic_materials"
      "magma_conduits"
      "mana"
      "map"
      "mapgen_helper"
      "mesecons"
      "mesecons_alias"
      "mesecons_blinkyplant"
      "mesecons_button"
      "mesecons_commandblock"
      "mesecons_delayer"
      "mesecons_detector"
      "mesecons_doors"
      "mesecons_extrawires"
      "mesecons_fpga"
      "mesecons_gamecompat"
      "mesecons_gates"
      "mesecons_hydroturbine"
      "mesecons_insulated"
      "mesecons_lamp"
      "mesecons_lightstone"
      "mesecons_luacontroller"
      "mesecons_materials"
      "mesecons_microcontroller"
      "mesecons_movestones"
      "mesecons_mvps"
      "mesecons_noteblock"
      "mesecons_pistons"
      "mesecons_powerplant"
      "mesecons_pressureplates"
      "mesecons_random"
      "mesecons_receiver"
      "mesecons_solarpanel"
      "mesecons_stickyblocks"
      "mesecons_switch"
      "mesecons_torch"
      "mesecons_walllever"
      "mesecons_wires"
      "mesecraft_announcements"
      "mesecraft_baked_clay"
      "mesecraft_bedrock"
      "mesecraft_beds"
      "mesecraft_binoculars"
      "mesecraft_bones"
      "mesecraft_bucket"
      "mesecraft_butterflies"
      "mesecraft_christmas"
      "mesecraft_companion_cube"
      "mesecraft_death_messages"
      "mesecraft_diet"
      "mesecraft_fireplace"
      "mesecraft_furniture"
      "mesecraft_gauges"
      "mesecraft_halloween"
      "mesecraft_holiday_lights"
      "mesecraft_lua"
      "mesecraft_magic_mirror"
      "mesecraft_mailbox"
      "mesecraft_mars"
      "mesecraft_miners_helmet"
      "mesecraft_mobs"
      "mesecraft_soundscapes"
      "mesecraft_spacesuit"
      "mesecraft_television"
      "mesecraft_toolranks"
      "mesecraft_torch"
      "mesecraft_void_chest"
      "mesecraft_zoom"
      "mine_gas"
      "mob_horse"
      "mobs"
      "mobs_npc"
      "moognu"
      "moon_phases"
      "moreblocks"
      "morelights"
      "morelights_extras"
      "morelights_vintage"
      "moreores"
      "mtg_craftguide"
      "mtg_plus"
      "named_waypoints"
      "namegen"
      "nether"
      "new_fireworks"
      "oil"
      "orbs_of_time"
      "other_worlds"
      "paintings"
      "parties"
      "pie"
      "pigiron"
      "pit_caves"
      "player_api"
      "player_monoids"
      "playereffects"
      "playerfactions"
      "playerplus"
      "pontoons"
      "protector"
      "pyramids"
      "radiant_damage"
      "radioactive_gas"
      "realcompass"
      "regional_weather"
      "ropes"
      "scifi_nodes"
      "screwdriver"
      "sethome"
      "settlements"
      "settlements_desert"
      "settlements_igloo"
      "settlements_jungle"
      "settlements_medieval"
      "settlements_mer"
      "settlements_ruins"
      "sfinv"
      "shields"
      "shipwrecks"
      "show_wielded_item"
      "signs"
      "slats"
      "slimes"
      "smoke"
      "snowsong"
      "sounding_line"
      "spawn"
      "stairs"
      "stm_nodes"
      "subterrane"
      "thirsty"
      "tnt"
      "tnt_revamped"
      "torch_bomb"
      "trash_can"
      "treasurer"
      "tsm_railcorridors"
      "vacuum"
      "vessels"
      "walls"
      "weather"
      "wielded_light"
      "wieldview"
      "wool"
      "xpanes"
    ];
    depends = [ ];
  };
  "the_unexpected_gambit" = mkMinetestGame {
    name = "the_unexpected_gambit";
    release = 22859;
    hash = "0262k4chql9ik81lii07xk6pnkwmfw6fcq69yhcl9nags1dyawpk";
    author = "NO11";
    provides = [
      "tug_chess_engine"
      "tug_chess_logic"
      "tug_core"
      "tug_gamestate"
      "tug_unexpected"
    ];
    depends = [ ];
  };
  "exile" = mkMinetestGame {
    name = "exile";
    release = 26880;
    hash = "02iyrs4rz53rj1n47yi0slwjgqxnfqv34g9mb663968j2nqxqzdv";
    author = "Mantar";
    provides = [
      "animals"
      "artifacts"
      "backpacks"
      "bed_rest"
      "bones"
      "canoe"
      "climate"
      "clothing"
      "crafting"
      "creative"
      "doors"
      "exile_env_sounds"
      "graffiti"
      "health"
      "inferno"
      "lightning"
      "liquid_store"
      "lore"
      "mapgen"
      "megamorph"
      "minimal"
      "mobkit"
      "naturalslopeslib"
      "nodecrafting"
      "nodes_nature"
      "player_api"
      "player_monoids"
      "rings"
      "ropes"
      "sfinv"
      "spears"
      "stairs"
      "tech"
      "volcano"
      "wielded_light"
    ];
    depends = [ ];
  };
  "alter" = mkMinetestGame {
    name = "alter";
    release = 23340;
    hash = "1g8jiy3nd0bmlwj57hc9j0dcrra4wjns7s7kr72ysavphik4ybnp";
    author = "yaman";
    provides = [
      "alter_initiator"
      "alter_messages"
      "alter_mirror"
    ];
    depends = [ ];
  };
  "tutorial" = mkMinetestGame {
    name = "tutorial";
    release = 23089;
    hash = "184j2dxvhriwn31xsc6fq7qmd4xrxh5pwyrq4bfm3d8y8x5ibccw";
    author = "Wuzzy";
    provides = [
      "intllib"
      "no_pulverize"
      "show_wielded_item"
      "tutorial"
      "tutorial_areas"
      "tutorial_arrow_signs"
      "tutorial_castle"
      "tutorial_cottages"
      "tutorial_creative"
      "tutorial_darkage"
      "tutorial_default"
      "tutorial_mapgen"
      "tutorial_music"
      "tutorial_supplemental"
    ];
    depends = [ ];
  };
  "asuna" = mkMinetestGame {
    name = "asuna";
    release = 26300;
    hash = "122zv93kj77dq45yiv3cwi5z75x6sv66685q945ndkm5b1fz206c";
    author = "EmptyStar";
    provides = [
      "abdecor"
      "animalia"
      "asuna_awards"
      "asuna_core"
      "asuna_textures"
      "awards"
      "badland"
      "bakedclay"
      "beautiflowers"
      "beds"
      "binoculars"
      "biomes_leafdecay"
      "boats"
      "bonemeal"
      "bones"
      "bottles"
      "bucket"
      "builtin_item"
      "butterflies"
      "carts"
      "caverealms"
      "colorful_beds"
      "creative"
      "creatura"
      "default"
      "doors"
      "dorwinion"
      "dungeon_loot"
      "dye"
      "env_sounds"
      "ethereal"
      "everness"
      "farming"
      "ferns"
      "fire"
      "fireflies"
      "flowerpot"
      "flowers"
      "frost_land"
      "game_commands"
      "geodes"
      "give_initial_stuff"
      "herbs"
      "item_drop"
      "japaneseforest"
      "keys"
      "leafstride"
      "livingjungle"
      "livingslimes"
      "lootchests"
      "lootchests_default"
      "map"
      "marinara"
      "mtg_craftguide"
      "music_api"
      "naturalbiomes"
      "nightshade"
      "pl_seaweed"
      "player_api"
      "player_monoids"
      "prairie"
      "screwdriver"
      "sethome"
      "sfinv"
      "sfinv_buttons"
      "show_wielded_item"
      "signs_lib"
      "skinsdb"
      "soup"
      "spawn"
      "stairs"
      "stamina"
      "telemosaic"
      "tnt"
      "too_many_stones"
      "tt"
      "tt_base"
      "vessels"
      "walls"
      "weather"
      "wielded_light"
      "wool"
      "worldgate"
      "x_farming"
      "xpanes"
    ];
    depends = [ ];
  };
  "labyrinth" = mkMinetestGame {
    name = "labyrinth";
    release = 16683;
    hash = "08zgnb2ir8sq248rz4bgjb89gl7lwgvnfhnnkd5c183nz4nvwx78";
    author = "Just_Visiting";
    provides = [ "labyrinth" ];
    depends = [ ];
  };
  "mineos" = mkMinetestGame {
    name = "mineos";
    release = 22487;
    hash = "0x6d7xdbgvmq7zdcqgajrsg44is5xw33fy9d9abp9wxq19sbisnx";
    author = "jordan4ibanez";
    provides = [ "mineos" ];
    depends = [ ];
  };
  "klots" = mkMinetestGame {
    name = "klots";
    release = 26637;
    hash = "11mv4lnywggcdj6wryk49kwz72cnka5kkk3fpzc74y4lkl7nn9l2";
    author = "Warr1024";
    provides = [
      "klots_api"
      "klots_commands"
      "klots_mapgen"
      "klots_music"
      "klots_pieces"
      "klots_player"
      "klots_skybox"
      "klots_terrain_nc"
      "klots_terrain_scifi"
    ];
    depends = [ ];
  };
  "super_sam" = mkMinetestGame {
    name = "super_sam";
    release = 26762;
    hash = "1ldibfk7f8p28dc6hqi1a7hsmbsv6dc7jzsimk1jmsd0a2cakxvl";
    author = "BuckarooBanzay";
    provides = [
      "controls"
      "mapsync"
      "moreblocks"
      "mtt"
      "mtzip"
      "pick_and_place"
      "player_api"
      "super_sam"
      "super_sam_ambience"
      "super_sam_game_elements"
      "super_sam_highscore"
      "super_sam_hud"
      "super_sam_level"
      "super_sam_map"
      "super_sam_nodes"
      "super_sam_skybox"
      "travelnet"
      "wield_events"
      "xcompat"
    ];
    depends = [ ];
  };
  "littlelady" = mkMinetestGame {
    name = "littlelady";
    release = 10980;
    hash = "1z0wjzs8d4dqfhv3m1z6j0s2pyqqzfxzmflmhhrqlfjjhi8bxvsw";
    author = "Just_Visiting";
    provides = [
      "classic_levels"
      "lady_assets"
      "ll_autobox"
      "ll_runtime"
      "markdown2formspec"
      "moreblocks"
      "rocks"
    ];
    depends = [ ];
  };
  "jail_escape" = mkMinetestGame {
    name = "jail_escape";
    release = 11625;
    hash = "0d358idjplr8fhbhr08awa04c792z66qviqh8cd7j7p7asxk7frm";
    author = "StarNinjas";
    provides = [
      "builtin_item"
      "game"
      "gunslinger"
      "item_drop"
      "jail_escape_mobs"
      "mobs"
      "player_api"
      "show_wielded_item"
      "sprint"
      "tnt"
    ];
    depends = [ ];
  };
  "hades_revisited" = mkMinetestGame {
    name = "hades_revisited";
    release = 23418;
    hash = "0wcbfylamw7fn36plpnkp20sqlwflwfcrl04v3cvaa5fc4kgplyp";
    author = "Wuzzy";
    provides = [
      "columnia"
      "creative"
      "give_initial_stuff"
      "gluncarp"
      "hades_atmos"
      "hades_bags"
      "hades_bedrock"
      "hades_beds"
      "hades_bones"
      "hades_bounds"
      "hades_bushes"
      "hades_chests"
      "hades_cloth"
      "hades_commands"
      "hades_compass"
      "hades_core"
      "hades_craftguide"
      "hades_death_messages"
      "hades_doors"
      "hades_drippingwater"
      "hades_dye"
      "hades_env_sounds"
      "hades_equipment"
      "hades_farming"
      "hades_fences"
      "hades_fertilizer"
      "hades_flowerpots"
      "hades_flowers"
      "hades_food"
      "hades_furnaces"
      "hades_furniture"
      "hades_gaia"
      "hades_glowcrystals"
      "hades_grass"
      "hades_greeting"
      "hades_gui"
      "hades_info"
      "hades_items"
      "hades_itemshow"
      "hades_lamps"
      "hades_magic_wand"
      "hades_mapgen"
      "hades_mapgen_lakes"
      "hades_materials"
      "hades_meshhand"
      "hades_movement"
      "hades_orienteering"
      "hades_plantslib"
      "hades_player"
      "hades_refruit"
      "hades_safespawn"
      "hades_seasons"
      "hades_seeds"
      "hades_skins"
      "hades_sky"
      "hades_sounds"
      "hades_sounds_atmos"
      "hades_stairs"
      "hades_tiles"
      "hades_torches"
      "hades_trash"
      "hades_trees"
      "hades_tt"
      "hades_vessels"
      "hades_vines"
      "hades_walls"
      "hades_wardrobes"
      "hades_waterplants"
      "hades_windows"
      "hbhunger"
      "hudbars"
      "mobs"
      "mobs_hades"
      "pipeworks"
      "playerphysics"
      "screwdriver"
      "sfinv"
      "show_wielded_item"
      "signs_lib"
      "tt"
    ];
    depends = [ ];
  };
  "invector" = mkMinetestGame {
    name = "invector";
    release = 10219;
    hash = "1zzjnwbzp27m574rylnp2llwndqyqqgds8v5shy2669ym7ydfrml";
    author = "Jordach";
    provides = [
      "invector"
      "solarsail"
      "superidx"
    ];
    depends = [ ];
  };
  "shadow_forest" = mkMinetestGame {
    name = "shadow_forest";
    release = 23316;
    hash = "05fzm5si5d55scqjsb252xs2bni4vc3gyi2xqh4m56sx0aicla2s";
    author = "Wuzzy";
    provides = [
      "playerphysics"
      "sf_commands"
      "sf_darkness"
      "sf_default_textures"
      "sf_dialog"
      "sf_doors"
      "sf_editor"
      "sf_events"
      "sf_foliage"
      "sf_footsteps"
      "sf_force_time"
      "sf_formspec"
      "sf_hand"
      "sf_health"
      "sf_hud"
      "sf_initial_items"
      "sf_inventory"
      "sf_loot"
      "sf_mapgen_aliases"
      "sf_messages"
      "sf_mobs"
      "sf_music"
      "sf_no_drop"
      "sf_no_multiplayer"
      "sf_no_pulverize"
      "sf_nodes"
      "sf_particles"
      "sf_player"
      "sf_portals"
      "sf_projectiles"
      "sf_resources"
      "sf_sky"
      "sf_sounds"
      "sf_upgrade"
      "sf_util"
      "sf_weapons"
      "sf_world"
      "sf_zones"
    ];
    depends = [ ];
  };
  "buildacity" = mkMinetestGame {
    name = "buildacity";
    release = 10209;
    hash = "1kv18gp6b453s9zw328gxa5lqf26pj7qi327f3lcd4j9djcr9l0z";
    author = "Splizard";
    provides = [
      "builda"
      "city"
      "polymap"
      "slopeslib"
    ];
    depends = [ ];
  };
  "blockbomber" = mkMinetestGame {
    name = "blockbomber";
    release = 22276;
    hash = "0dvydffsc0w231lcgjiy95m2kdvh99yzq1zk2arpf614p8bjxmr6";
    author = "MisterE";
    provides = [
      "bb_bomb"
      "bb_deathmessages"
      "bb_loop"
      "bb_menu"
      "bb_noafk"
      "bb_nodes"
      "bb_player"
      "bb_playermodel"
      "bb_powerup"
      "bb_schems"
      "controls"
      "misteresarenas"
      "sn_expansion"
    ];
    depends = [ ];
  };
  "nonsensical_skyblock" = mkMinetestGame {
    name = "nonsensical_skyblock";
    release = 24271;
    hash = "0pxg0czxkrlqlinkiyy6qgz5db0xzi1vc5zwvjhz5d5qnrmykv5q";
    author = "Kimapr";
    provides = [
      "3d_armor"
      "3d_armor_ip"
      "3d_armor_sfinv"
      "3d_armor_stand"
      "3d_armor_ui"
      "aerial"
      "anvil"
      "armor_admin"
      "armor_bronze"
      "armor_cactus"
      "armor_crystal"
      "armor_diamond"
      "armor_gold"
      "armor_mithril"
      "armor_nether"
      "armor_steel"
      "armor_wood"
      "backpacks"
      "basic_materials"
      "beds"
      "binoculars"
      "boats"
      "bonemeal"
      "bones"
      "bows"
      "bucket"
      "butterflies"
      "carts"
      "cooksneak"
      "creative"
      "default"
      "diggable_chests"
      "digibuilder"
      "digicontrol"
      "digiline_craftdb"
      "digiline_global_memory"
      "digilines"
      "digiscreen"
      "digistuff"
      "digtron"
      "doors"
      "dungeon_loot"
      "dye"
      "env_sounds"
      "exchange_shop"
      "extranodes"
      "farming"
      "fire"
      "fire_plus"
      "fireflies"
      "flow"
      "flowers"
      "formspec_ast"
      "game_commands"
      "ggraffiti"
      "give_initial_stuff"
      "glamorous_deaths"
      "glcraft"
      "glider"
      "headanim"
      "hudbars"
      "itemframes"
      "jumpdrive"
      "keys"
      "lavastuff"
      "leaveghost"
      "legboat"
      "lwcomponents"
      "map"
      "mesecons"
      "mesecons_alias"
      "mesecons_blinkyplant"
      "mesecons_button"
      "mesecons_commandblock"
      "mesecons_delayer"
      "mesecons_detector"
      "mesecons_doors"
      "mesecons_extrawires"
      "mesecons_fpga"
      "mesecons_gates"
      "mesecons_hydroturbine"
      "mesecons_insulated"
      "mesecons_lamp"
      "mesecons_lightstone"
      "mesecons_luacontroller"
      "mesecons_materials"
      "mesecons_microcontroller"
      "mesecons_movestones"
      "mesecons_mvps"
      "mesecons_noteblock"
      "mesecons_pistons"
      "mesecons_powerplant"
      "mesecons_pressureplates"
      "mesecons_random"
      "mesecons_receiver"
      "mesecons_solarpanel"
      "mesecons_stickyblocks"
      "mesecons_switch"
      "mesecons_torch"
      "mesecons_walllever"
      "mesecons_wires"
      "modlib"
      "moreblocks"
      "moreores"
      "mtg_craftguide"
      "multitools"
      "nodecore_playertags"
      "nonsensical_islands"
      "nonsensical_renewability"
      "pipeworks"
      "pipunhole"
      "player_api"
      "player_monoids"
      "pride_flags"
      "protector"
      "rgblightstone"
      "rotate"
      "scifi_nodes"
      "screwdriver"
      "sensical_stackmax"
      "sethome"
      "sfinv"
      "shields"
      "signs_lib"
      "skinsdb"
      "soccer"
      "spacecannon"
      "spawn"
      "stairs"
      "technic"
      "technic_chests"
      "technic_cnc"
      "technic_worldgen"
      "tnt"
      "travelnet"
      "unprotector"
      "vehicles"
      "vessels"
      "walls"
      "weather"
      "wielded_light"
      "wieldview"
      "woodcutting"
      "wool"
      "xcompat"
      "xpanes"
      "zzzz_glcraft_crafthook"
    ];
    depends = [ ];
  };
  "prang" = mkMinetestGame {
    name = "prang";
    release = 25994;
    hash = "0mpq0mgbbv4wlyws5zb16mcbwagc49qzg80nlwwf6g8h3k4kyl0i";
    author = "luk3yx";
    provides = [
      "formspec_ast"
      "fs51"
      "hud_fs"
      "prang"
    ];
    depends = [ ];
  };
  "void" = mkMinetestGame {
    name = "void";
    release = 19764;
    hash = "1z62958qbp2igqybb8akwhx4nirv0xyrmbbp2x83qpbrwhbvmwdj";
    author = "Linuxdirk";
    provides = [
      "void_essential"
      "void_hand"
    ];
    depends = [ ];
  };
  "slide_space" = mkMinetestGame {
    name = "slide_space";
    release = 15347;
    hash = "0d9z2dxj16fb2yz9vxfqrk86ds3c1zqjckkkravr7kkfc3aizajp";
    author = "MisterE";
    provides = [
      "slide_space_nodes"
      "slide_space_setup"
      "slide_space_slider"
      "slidespace_modgen_mod_export"
    ];
    depends = [ ];
  };
  "boxworld3d" = mkMinetestGame {
    name = "boxworld3d";
    release = 7435;
    hash = "1051w1vkdrnfrjl5lbnrsr0v8phwxsqjs36x8i8q54wshl5kyi0l";
    author = "Hume2";
    provides = [
      "boxworld"
      "creative"
      "discrete_player"
      "level"
      "player_api"
      "sfinv"
      "worldedit"
      "worldedit_brush"
      "worldedit_commands"
      "worldedit_gui"
      "worldedit_shortcommands"
    ];
    depends = [ ];
  };
  "colourhop" = mkMinetestGame {
    name = "colourhop";
    release = 21713;
    hash = "027z793nr4nn5gblnd70j2xw11fgiy60vsxbgnm05am7iwa7245r";
    author = "talas";
    provides = [
      "central_message"
      "ch_ability"
      "ch_ambient"
      "ch_automata"
      "ch_buildings"
      "ch_colours"
      "ch_draconis"
      "ch_fireworks"
      "ch_flashscreen"
      "ch_ion_cannon"
      "ch_jump"
      "ch_mapgen"
      "ch_music"
      "ch_player_api"
      "ch_projectors"
      "ch_schematics"
      "ch_silver"
      "ch_sky"
      "ch_storage"
      "ch_util"
      "ch_workarounds"
      "ch_world"
      "hopbar"
      "mob_core"
      "mobkit"
    ];
    depends = [ ];
  };
  "xaenvironment" = mkMinetestGame {
    name = "xaenvironment";
    release = 24115;
    hash = "175b16704rarv7i9hbwi5qpb9yfizq5y61mhnzr499k1rdphmd0r";
    author = "AiTechEye";
    provides = [
      "air_balloons"
      "armor"
      "beds"
      "bones"
      "catchballs"
      "clock"
      "commands"
      "default"
      "deprecated"
      "exa2d"
      "exaachievements"
      "exacarts"
      "examobs"
      "exatec"
      "fire"
      "hook"
      "keystrokes"
      "lakes"
      "livetools"
      "map"
      "maps"
      "materials"
      "multidimensions"
      "music"
      "nitroglycerin"
      "nodeextractor"
      "paintnings"
      "places"
      "plants"
      "plasma"
      "player_style"
      "protect"
      "pyramids"
      "quads"
      "sign"
      "spacestuff"
      "survivorstart"
      "synth"
      "toxic"
      "vexcazer"
      "vexcazer_adpick"
      "vexcazer_auto_ad_mod"
      "vexcazer_con"
      "vexcazer_copy"
      "vexcazer_extras"
      "vexcazer_flashlight"
      "vexcazer_gravity"
      "vexcazer_invisible"
      "vexcazer_massive"
      "vexcazer_nuke"
      "vexcazer_powergen"
      "vexcazer_radio"
      "vexcazer_regen"
      "vexcazer_schematic"
      "vexcazer_telepad"
      "vexcazer_teleport"
      "vexcazer_travel"
      "villages"
      "weather"
      "xesmartshop"
    ];
    depends = [ ];
  };
  "minegistic" = mkMinetestGame {
    name = "minegistic";
    release = 19111;
    hash = "0c50iz88h1rw713f8x88qp8063s3nq1nzvqzh1n4pdp3h6ycbf69";
    author = "logalog";
    provides = [
      "basenodes"
      "mapgen"
      "minegistics"
      "skybox"
      "trains"
    ];
    depends = [ ];
  };
  "pmb_core" = mkMinetestGame {
    name = "pmb_core";
    release = 25938;
    hash = "14smfxh2yl9w378qg6bb2rlfkn1ap98wxlzx0hkbm6pb678c5ij1";
    author = "Sumianvoice";
    provides = [
      "age_of_mending"
      "aom_compost"
      "aom_creative"
      "aom_explosives"
      "aom_fixes"
      "aom_fluidapi"
      "aom_gates"
      "aom_goblins"
      "aom_igm"
      "aom_item_entity"
      "aom_itemframe"
      "aom_machines"
      "aom_music"
      "aom_scrap"
      "aom_settings"
      "aom_warning"
      "aom_wire"
      "asignals"
      "attachto_player"
      "gm_windmills"
      "itemdesc"
      "player_info"
      "player_init"
      "player_model"
      "player_sprint"
      "player_swimming"
      "playerphysics"
      "pmb_admin_tools"
      "pmb_ambience"
      "pmb_animals"
      "pmb_bow"
      "pmb_combat"
      "pmb_cooking"
      "pmb_crafters"
      "pmb_dimensions"
      "pmb_doors"
      "pmb_dummy"
      "pmb_dyes"
      "pmb_elementals"
      "pmb_entity_api"
      "pmb_entity_base"
      "pmb_fengold"
      "pmb_fenn"
      "pmb_fire"
      "pmb_flora"
      "pmb_fonts"
      "pmb_food"
      "pmb_gamemodes"
      "pmb_glass"
      "pmb_hammer"
      "pmb_hand"
      "pmb_hud"
      "pmb_humanoid"
      "pmb_inventory"
      "pmb_items"
      "pmb_kelar"
      "pmb_kits"
      "pmb_lantern"
      "pmb_lights"
      "pmb_liquids"
      "pmb_map_base"
      "pmb_mirecaves"
      "pmb_mob_spawn"
      "pmb_muskets"
      "pmb_node_update"
      "pmb_on_generated"
      "pmb_pipes"
      "pmb_rope"
      "pmb_sch"
      "pmb_seelie"
      "pmb_soil"
      "pmb_sounds"
      "pmb_spawn"
      "pmb_spawn_inhibitors"
      "pmb_statusfx"
      "pmb_stone"
      "pmb_storage"
      "pmb_tcraft"
      "pmb_terracotta"
      "pmb_tools"
      "pmb_transit"
      "pmb_trees"
      "pmb_underworld"
      "pmb_util"
      "pmb_vars"
      "pmb_weather"
      "pmb_wield"
      "pmb_wings"
      "pmb_wood"
      "pmb_wrench"
      "sum_airship"
      "wield3d"
      "world_storage"
    ];
    depends = [ ];
  };
  "capturetheflag" = mkMinetestGame {
    name = "capturetheflag";
    release = 25887;
    hash = "0xxdg2f90g1wrs9pki99p43n3nh6zw63cnnghzpcfqfv4wq0vhdg";
    author = "rubenwardy";
    provides = [
      "afkkick"
      "binoculars"
      "bucket"
      "butterflies"
      "chat_bg"
      "crafting"
      "creative"
      "ctf_api"
      "ctf_changes"
      "ctf_chat"
      "ctf_combat_mode"
      "ctf_core"
      "ctf_cosmetics"
      "ctf_gui"
      "ctf_healing"
      "ctf_kill_list"
      "ctf_map"
      "ctf_melee"
      "ctf_mode_classes"
      "ctf_mode_classic"
      "ctf_mode_nade_fight"
      "ctf_modebase"
      "ctf_player"
      "ctf_ranged"
      "ctf_rankings"
      "ctf_report"
      "ctf_settings"
      "ctf_teams"
      "darkness_nerf"
      "default"
      "doors"
      "dropondie"
      "dye"
      "email"
      "fire"
      "fireflies"
      "flowers"
      "grenades"
      "hpbar"
      "hpbar_hud"
      "hud_events"
      "lib_chatcmdbuilder"
      "map"
      "mhud"
      "physics"
      "player_api"
      "playertag"
      "random_messages"
      "rawf"
      "real_suffocation"
      "screwdriver"
      "select_item"
      "sfinv"
      "skybox"
      "sprint"
      "stairs"
      "throwable_snow"
      "tnt"
      "vessels"
      "walls"
      "wield3d"
      "wool"
      "xpanes"
    ];
    depends = [ ];
  };
  "repixture" = mkMinetestGame {
    name = "repixture";
    release = 25362;
    hash = "1vx93bjcnpq0jr4k8d90zl9ajksy7ac7d0gn0yskyph2pkm1k59j";
    author = "Wuzzy";
    provides = [
      "rp_achievements"
      "rp_ambiance"
      "rp_armor"
      "rp_attached"
      "rp_bed"
      "rp_boats"
      "rp_book"
      "rp_builtin_item"
      "rp_checkitem"
      "rp_commands"
      "rp_crafting"
      "rp_creative"
      "rp_death_messages"
      "rp_decor"
      "rp_default"
      "rp_door"
      "rp_drop_items_on_die"
      "rp_explosions"
      "rp_farming"
      "rp_fire"
      "rp_fonts"
      "rp_formspec"
      "rp_formspec_config"
      "rp_game_meta"
      "rp_give_initial"
      "rp_gold"
      "rp_goodies"
      "rp_headbars"
      "rp_hud"
      "rp_hunger"
      "rp_item_drop"
      "rp_itemdef_defaults"
      "rp_itemshow"
      "rp_jewels"
      "rp_label"
      "rp_localize"
      "rp_locks"
      "rp_lumien"
      "rp_mobs"
      "rp_mobs_legacy"
      "rp_mobs_mobs"
      "rp_mobs_mobs_spawn"
      "rp_mobs_spawn"
      "rp_moon"
      "rp_music"
      "rp_nav"
      "rp_paint"
      "rp_parachute"
      "rp_partialblocks"
      "rp_pathfinder"
      "rp_player"
      "rp_player_effects"
      "rp_player_skins"
      "rp_privs"
      "rp_safespawn"
      "rp_signs"
      "rp_sky"
      "rp_sounds"
      "rp_spikes"
      "rp_spyglass"
      "rp_supertools"
      "rp_testing"
      "rp_textures"
      "rp_tnt"
      "rp_tt"
      "rp_util"
      "rp_vignette"
      "rp_village"
      "rp_weather"
      "rp_wieldhand"
      "rp_wielditem"
      "show_wielded_item"
      "tt"
      "tt_base"
      "unicode_text"
    ];
    depends = [ ];
  };
  "loria" = mkMinetestGame {
    name = "loria";
    release = 16565;
    hash = "0xfq6sm2axw2p7z0hj2fldmxwh3nfsazfscykf5gcrlciax3wywp";
    author = "siegment";
    provides = [
      "electricity"
      "furnace"
      "loria"
      "radiation"
    ];
    depends = [ ];
  };
  "piranesi_redo" = mkMinetestGame {
    name = "piranesi_redo";
    release = 26634;
    hash = "0mfn7fl0ns28imzn1jcry55p5nx100wgw1fgvx1pdi2adclzf3w7";
    author = "Warr1024";
    provides = [
      "piredo_ambiance"
      "piredo_api"
      "piredo_clues"
      "piredo_items"
      "piredo_map"
      "piredo_music"
      "piredo_player"
      "piredo_puzzles"
      "piredo_schems"
      "piredo_terrain"
    ];
    depends = [ ];
  };
  "balloonair" = mkMinetestGame {
    name = "balloonair";
    release = 14625;
    hash = "015vnrc4wk95s4r3q9bwsbalyyxcay6inc2wjgaxa2z38g1r4y80";
    author = "NO11";
    provides = [ "balloon" ];
    depends = [ ];
  };
  "lordofthetest" = mkMinetestGame {
    name = "lordofthetest";
    release = 12831;
    hash = "1zia6km5gyjw41ggixb3cy8jsymipmv97szrip1il26ja3sswyab";
    author = "Amaz";
    provides = [
      "boats"
      "bones"
      "bucket"
      "creative"
      "darkage"
      "default"
      "doors"
      "dye"
      "farming"
      "fire"
      "flowers"
      "lottachievements"
      "lottarmor"
      "lottblocks"
      "lottclasses"
      "lottclothes"
      "lottfarming"
      "lottinventory"
      "lottmapgen"
      "lottmobs"
      "lottores"
      "lottother"
      "lottplants"
      "lottpotion"
      "lottspecial"
      "lottthrowing"
      "lottweapons"
      "mobs"
      "screwdriver"
      "stairs"
      "stamina"
      "vessels"
      "wool"
    ];
    depends = [ ];
  };
  "skyblock_zero" = mkMinetestGame {
    name = "skyblock_zero";
    release = 26960;
    hash = "17chgcshcpkbx8z9fmm05ym5gdxdkla17d0qxk86wbyr3wx5iip5";
    author = "zanderdev";
    provides = [
      "creative"
      "fakelib"
      "mtg_craftguide"
      "pipeworks"
      "sbz_base"
      "sbz_chem"
      "sbz_decor"
      "sbz_meteorites"
      "sbz_power"
      "sbz_progression"
      "sbz_resources"
      "screwdriver"
      "sfinv"
    ];
    depends = [ ];
  };
  "sss" = mkMinetestGame {
    name = "sss";
    release = 15442;
    hash = "0aw7i61iz8j6r088l8sp4vr178al87z45xznvj43dd5mi9akl9qi";
    author = "Nathan.S";
    provides = [
      "sfinv"
      "sss_core"
      "sss_items"
      "sss_map"
      "sss_mapgen"
    ];
    depends = [ ];
  };
  "formspec_editor" = mkMinetestGame {
    name = "formspec_editor";
    release = 8551;
    hash = "0lb7kfn497ij9w7xzvkfr6nvs6qy5pl9px82daxx13i1878biw2d";
    author = "Just_Visiting";
    provides = [ "formspec_edit" ];
    depends = [ ];
  };
  "cavegame" = mkMinetestGame {
    name = "cavegame";
    release = 14112;
    hash = "109s39r8c9k9q7072nhlngrisy1zv5jf2ij9lf3srzld0w1p6l2r";
    author = "GoodClover";
    provides = [
      "cavegame_mapgen"
      "cavegame_nodes"
      "cavegame_player"
    ];
    depends = [ ];
  };
  "build_n_buy" = mkMinetestGame {
    name = "build_n_buy";
    release = 13312;
    hash = "1q14lcc0i20sg6mirxqlv719jxk76mr6k68ylxsp9hpz40xzn0jl";
    author = "j45";
    provides = [
      "bnb_coins"
      "bnb_core"
      "bnb_nodes"
      "bnb_schems"
    ];
    depends = [ ];
  };
  "ksurvive2" = mkMinetestGame {
    name = "ksurvive2";
    release = 18245;
    hash = "0shs9mlbh66nx6c3nz7v86aglr5wky20n32ci4fvs1k11xxlfnd5";
    author = "mooD_Slayer";
    provides = [
      "ks_decor"
      "ks_extras"
      "ks_flora"
      "ks_glass"
      "ks_metals"
      "ks_ores"
      "ks_pitch"
      "ks_pyro"
      "ks_sounds"
      "ks_terrain"
      "ks_tools"
    ];
    depends = [ ];
  };
  "newplanet" = mkMinetestGame {
    name = "newplanet";
    release = 4041;
    hash = "1c9x6glvx5q21by0b9rnl585plskjgvx4mi0c3di9cy5ryl1ad2x";
    author = "Hi_World";
    provides = [
      "creative"
      "cube_mobs"
      "default"
      "dye"
      "findbiome"
      "hudbars"
      "item_drop"
      "mobkit"
      "mpd"
      "newhorizons"
      "newplanet"
      "player_api"
      "quest_lib"
      "quests"
      "skybox"
      "unified_inventory"
      "witt"
    ];
    depends = [ ];
  };
  "nodeverse" = mkMinetestGame {
    name = "nodeverse";
    release = 22625;
    hash = "1ha5bqr1pm5bl9aq68ryrrsq5miivg1rx5ghgfnjn6qc6zymg0ib";
    author = "aerkiaga";
    provides = [
      "nv_encyclopedia"
      "nv_flora"
      "nv_game"
      "nv_gui"
      "nv_planetgen"
      "nv_player"
      "nv_ships"
      "nv_universe"
      "player_api"
    ];
    depends = [ ];
  };
  "mesecons_lab" = mkMinetestGame {
    name = "mesecons_lab";
    release = 27002;
    hash = "1gd6amijr8vkpj58bil22yzpklh326ynz7y8h8k2jbg0h956g6pr";
    author = "BuckarooBanzay";
    provides = [
      "basic_materials"
      "boards"
      "creative"
      "default"
      "digibuilder"
      "digilines"
      "digistuff"
      "display_api"
      "doors"
      "dye"
      "extranodes"
      "factory_bridges"
      "fakelib"
      "flowers"
      "font_api"
      "font_metro"
      "mapsync"
      "mesecons"
      "mesecons_alias"
      "mesecons_blinkyplant"
      "mesecons_button"
      "mesecons_commandblock"
      "mesecons_delayer"
      "mesecons_detector"
      "mesecons_doors"
      "mesecons_extrawires"
      "mesecons_fpga"
      "mesecons_gamecompat"
      "mesecons_gates"
      "mesecons_hydroturbine"
      "mesecons_insulated"
      "mesecons_lab"
      "mesecons_lab_images"
      "mesecons_lab_mapgen"
      "mesecons_lamp"
      "mesecons_lightstone"
      "mesecons_luacontroller"
      "mesecons_materials"
      "mesecons_microcontroller"
      "mesecons_movestones"
      "mesecons_mvps"
      "mesecons_noteblock"
      "mesecons_pistons"
      "mesecons_powerplant"
      "mesecons_pressureplates"
      "mesecons_random"
      "mesecons_receiver"
      "mesecons_solarpanel"
      "mesecons_stickyblocks"
      "mesecons_switch"
      "mesecons_torch"
      "mesecons_walllever"
      "mesecons_wires"
      "moreblocks"
      "moreores"
      "mtt"
      "mtzip"
      "ontime_clocks"
      "pipeworks"
      "player_api"
      "printer"
      "screwdriver"
      "sfinv"
      "signs"
      "signs_api"
      "signs_road"
      "steles"
      "technic"
      "technic_chests"
      "technic_cnc"
      "technic_worldgen"
      "unified_inventory"
      "unifieddyes"
      "xcompat"
    ];
    depends = [ ];
  };
}
