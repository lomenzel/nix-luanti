{ mkLuantiGame }:
{
  "Minetest/minetest_game" = mkLuantiGame {
    name = "minetest_game";
    release = 28057;
    hash = "1kl3xmxg7lq9fmpif0gs1c58hh88akcw6gyy3wza7xmr3np81yr2";
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
    with_same_name = [ ];
  };
  "Wuzzy/mineclone2" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Sumianvoice/backroomtest" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "regulus/regulus_mtgamejam_2023" = mkLuantiGame {
    name = "regulus_mtgamejam_2023";
    release = 27632;
    hash = "079ch6afjzj4vgdk5kpfn7a5ixv25rgnsj0znzmghmxlwm8x94dv";
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
    with_same_name = [ ];
  };
  "_Irevol_/citadel" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "ryvnf/mineclonia" = mkLuantiGame {
    name = "mineclonia";
    release = 28079;
    hash = "06l9a08w3ywypp0g377w4r9ydad54w9khfzlxibhdk5p7mmq1c3k";
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
      "mcl_dripstone"
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
      "mcl_powder_snow"
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
    with_same_name = [ ];
  };
  "Warr1024/nodecore" = mkLuantiGame {
    name = "nodecore";
    release = 27929;
    hash = "0gyhkg41b8yb5mvpwhcw7mcgxz82h5d65n2wza4ngplxdvph34zx";
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
      "nc_api_rotate"
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
    with_same_name = [ ];
  };
  "Wuzzy/glitch" = mkLuantiGame {
    name = "glitch";
    release = 27010;
    hash = "033d7c1i6gxba3q94gl7al7725paihk7dbg4b6w1h3jw7zksfnkl";
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
    with_same_name = [ ];
  };
  "AFCM/subway_miner" = mkLuantiGame {
    name = "subway_miner";
    release = 24722;
    hash = "192fh4zlx1vf6bsqx39s1jmgslspw8gibzs8z09wiac3x15lvx6z";
    author = "AFCM";
    provides = [
      "sm_game"
      "sm_mapnodes"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "MeseCraft/mesecraft" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Mantar/exile" = mkLuantiGame {
    name = "exile";
    release = 28261;
    hash = "16izpm8dxrmvwaa5w805by5pc5aykg2139z17yrmvy447dv52ya5";
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
    with_same_name = [ ];
  };
  "yaman/alter" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Wuzzy/tutorial" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "EmptyStar/asuna" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Just_Visiting/labyrinth" = mkLuantiGame {
    name = "labyrinth";
    release = 16683;
    hash = "08zgnb2ir8sq248rz4bgjb89gl7lwgvnfhnnkd5c183nz4nvwx78";
    author = "Just_Visiting";
    provides = [ "labyrinth" ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Warr1024/klots" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "jordan4ibanez/mineos" = mkLuantiGame {
    name = "mineos";
    release = 22487;
    hash = "0x6d7xdbgvmq7zdcqgajrsg44is5xw33fy9d9abp9wxq19sbisnx";
    author = "jordan4ibanez";
    provides = [ "mineos" ];
    depends = [ ];
    with_same_name = [ ];
  };
  "BuckarooBanzay/super_sam" = mkLuantiGame {
    name = "super_sam";
    release = 27817;
    hash = "103bgla3drqysg3cp53b28ch3f1f8w6q5kw7rsan21z7c1jw127j";
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
    with_same_name = [ ];
  };
  "Just_Visiting/littlelady" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Wuzzy/hades_revisited" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "StarNinjas/jail_escape" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Kimapr/nonsensical_skyblock" = mkLuantiGame {
    name = "nonsensical_skyblock";
    release = 27427;
    hash = "0arr0xpzcqrq40b7y83m9c1hns02kiqx37i5izxiw8sdhrc6k4kv";
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
      "fakelib"
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
    with_same_name = [ ];
  };
  "Splizard/buildacity" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Wuzzy/shadow_forest" = mkLuantiGame {
    name = "shadow_forest";
    release = 27445;
    hash = "0gr324581cp4sd03akgnasbigbvxs22fpvxn63cd6fd1xyr7gla1";
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
      "sf_game_meta"
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
    with_same_name = [ ];
  };
  "MisterE/blockbomber" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Jordach/invector" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "luk3yx/prang" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "NO11/the_unexpected_gambit" = mkLuantiGame {
    name = "the_unexpected_gambit";
    release = 27395;
    hash = "1xjfvvwngxacy6r379chgl6a0r67y4ivikgpik21xmw0vyc150fa";
    author = "NO11";
    provides = [
      "tug_chess_engine"
      "tug_chess_logic"
      "tug_core"
      "tug_gamestate"
      "tug_unexpected"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Sumianvoice/pmb_core" = mkLuantiGame {
    name = "pmb_core";
    release = 28098;
    hash = "1d6gfaqbf0d4hy8jxcq6sz2mhhz9llgcxxvhxrsnw1x4qsrpnmiv";
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
      "aom_playerapi"
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
    with_same_name = [ ];
  };
  "rubenwardy/capturetheflag" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Wuzzy/repixture" = mkLuantiGame {
    name = "repixture";
    release = 28179;
    hash = "1lxysiyglynvhj517gsmksjcr0fm1pyzch1b8m2bgjjczkgd8q29";
    author = "Wuzzy";
    provides = [
      "player_api"
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
      "rp_item_update"
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
    with_same_name = [ ];
  };
  "Linuxdirk/void" = mkLuantiGame {
    name = "void";
    release = 19764;
    hash = "1z62958qbp2igqybb8akwhx4nirv0xyrmbbp2x83qpbrwhbvmwdj";
    author = "Linuxdirk";
    provides = [
      "void_essential"
      "void_hand"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "MisterE/slide_space" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Hume2/boxworld3d" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "logalog/minegistic" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "talas/colourhop" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "AiTechEye/xaenvironment" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "siegment/loria" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "j45/build_n_buy" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "NO11/balloonair" = mkLuantiGame {
    name = "balloonair";
    release = 14625;
    hash = "015vnrc4wk95s4r3q9bwsbalyyxcay6inc2wjgaxa2z38g1r4y80";
    author = "NO11";
    provides = [ "balloon" ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Warr1024/piranesi_redo" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Nathan.S/sss" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "zanderdev/skyblock_zero" = mkLuantiGame {
    name = "skyblock_zero";
    release = 28193;
    hash = "040z927vqal0v8md4gmjlka2kfj7s6g7s6yyxx4xzj3w5gk3z8sr";
    author = "zanderdev";
    provides = [
      "areas"
      "areasprotector"
      "creative"
      "fakelib"
      "libox"
      "pipeworks"
      "sbz_base"
      "sbz_bio"
      "sbz_chem"
      "sbz_decor"
      "sbz_devtools"
      "sbz_logic"
      "sbz_logic_devices"
      "sbz_meteorites"
      "sbz_power"
      "sbz_progression"
      "sbz_resources"
      "screwdriver"
      "sethome"
      "signs_lib"
      "stairs"
      "tpr"
      "unified_inventory"
      "unified_inventory_plus"
      "unifieddyes"
      "vizlib"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Amaz/lordofthetest" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "GoodClover/cavegame" = mkLuantiGame {
    name = "cavegame";
    release = 28119;
    hash = "145dizsm69yi1wfsy92bjjnj9k0i1lx534wch31qd48vpfka84da";
    author = "GoodClover";
    provides = [
      "cavegame_mapgen"
      "cavegame_nodes"
      "cavegame_player"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Just_Visiting/formspec_editor" = mkLuantiGame {
    name = "formspec_editor";
    release = 8551;
    hash = "0lb7kfn497ij9w7xzvkfr6nvs6qy5pl9px82daxx13i1878biw2d";
    author = "Just_Visiting";
    provides = [ "formspec_edit" ];
    depends = [ ];
    with_same_name = [ ];
  };
  "mooD_Slayer/ksurvive2" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Hi_World/newplanet" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "aerkiaga/nodeverse" = mkLuantiGame {
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
    with_same_name = [ ];
  };
  "Minetest/devtest" = mkLuantiGame {
    name = "devtest";
    release = 22166;
    hash = "1abww09x35ya9vjakjr5gnjp11gajgl5cd2fmbhl3fmbbgdbr5p4";
    author = "Minetest";
    provides = [
      "basenodes"
      "basetools"
      "benchmarks"
      "broken"
      "bucket"
      "callbacks"
      "chest"
      "chest_of_everything"
      "dignodes"
      "give_initial_stuff"
      "initial_message"
      "lighting"
      "log"
      "mapgen"
      "modchannels"
      "soundstuff"
      "stairs"
      "testentities"
      "testfood"
      "testformspec"
      "testfullscreenfs"
      "testhud"
      "testitems"
      "testnodes"
      "testpathfinder"
      "testtools"
      "tiled"
      "unittests"
      "util_commands"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "UnbrokenUnworn/modular_portals" = mkLuantiGame {
    name = "modular_portals";
    release = 10101;
    hash = "03d8k7cn5wgfha4mgsvipy78ysgzmrivgd8a10akdm4kdgvy4xlg";
    author = "UnbrokenUnworn";
    provides = [
      "book"
      "farming"
      "player"
      "rooms"
      "terrain"
      "wood"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "BuckarooBanzay/mesecons_lab" = mkLuantiGame {
    name = "mesecons_lab";
    release = 27246;
    hash = "0wpzhcl5n0svna5l23jxass32575sz6m4mx4v51bw581436rhhg3";
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
    with_same_name = [ ];
  };
  "1248/castrum" = mkLuantiGame {
    name = "castrum";
    release = 4788;
    hash = "1csn2zmf8nyv822c86jk7xmxfr7waxsh8q84j8x05hz3jp3jd8gz";
    author = "1248";
    provides = [
      "beds"
      "binoculars"
      "boats"
      "bones"
      "bucket"
      "butterflies"
      "carts"
      "castrum"
      "creative"
      "default"
      "doors"
      "dungeon_loot"
      "dye"
      "env_sounds"
      "farming"
      "fire"
      "fireflies"
      "flatgen"
      "flowers"
      "game_commands"
      "give_initial_stuff"
      "map"
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
      "worldedit"
      "worldedit_commands"
      "worldedit_gui"
      "worldedit_shortcommands"
      "xpanes"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Emojiminetest/parkour" = mkLuantiGame {
    name = "parkour";
    release = 11037;
    hash = "1q3h9pafwj0d6zrbncq73ylplfpi2ijszvlsxqlayya3llxgqz8n";
    author = "Emojiminetest";
    provides = [
      "cmd_alias"
      "freeze"
      "log_util"
      "pkr_hands"
      "pkr_info"
      "pkr_init"
      "pkr_main"
      "pkr_nodes"
      "pkr_tips"
      "pkr_workaround"
      "player_api"
      "sfinv"
      "sfinv_info"
      "text_commands"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "KareaGhandTrail/block_assault" = mkLuantiGame {
    name = "block_assault";
    release = 28273;
    hash = "0scgqwwi5mlfh2n1w5v3fimpqrlz6my4cb5cs7mnpz2blyw6hlcr";
    author = "KareaGhandTrail";
    provides = [
      "bas_ctf"
      "beds"
      "bones"
      "bs_achievements"
      "bs_annouce"
      "bs_armor"
      "bs_blocks_and_decorations"
      "bs_bots"
      "bs_chat_color"
      "bs_chat_log"
      "bs_configuration"
      "bs_core"
      "bs_crafting_table"
      "bs_cta"
      "bs_currency"
      "bs_dead_body"
      "bs_debug_mode"
      "bs_emote"
      "bs_flag"
      "bs_helmet_kevlar"
      "bs_helpers"
      "bs_hud_rounds"
      "bs_kill_history"
      "bs_maps"
      "bs_match_core"
      "bs_media"
      "bs_medic_stand"
      "bs_modifier"
      "bs_molotov"
      "bs_on_use_item"
      "bs_outbounds"
      "bs_player_animations"
      "bs_player_assignments"
      "bs_player_interpretor"
      "bs_player_inventory_formspec"
      "bs_player_movements_controller"
      "bs_player_shadows"
      "bs_player_team"
      "bs_player_textures_core"
      "bs_playertag"
      "bs_pvp_engine"
      "bs_random_messages"
      "bs_respawn_delay"
      "bs_score"
      "bs_shop"
      "bs_skinsdb_support"
      "bs_spectator"
      "bs_start_inventory"
      "bs_stats"
      "bs_step_controller"
      "bs_strict_env"
      "bs_summary"
      "bs_team_stats_hud"
      "bs_throwable_snow"
      "bs_ticks"
      "bs_top_players"
      "bs_wielded_rifle"
      "bs_world_controller"
      "cs_android_crosshair"
      "cs_c4"
      "cs_modes_registry"
      "cs_object_nametag"
      "cs_votes"
      "csgo_map1"
      "default"
      "doors"
      "dropondie"
      "dye"
      "env_sounds"
      "fire"
      "flowers"
      "grenades"
      "hud_events"
      "hudbars"
      "invaded_village"
      "littletown"
      "medieval_town"
      "mhud"
      "panel_lib"
      "player_api"
      "rangedweapons"
      "screwdriver"
      "stairs"
      "tnt"
      "town"
      "villages"
      "wield3d"
      "wool"
      "xpanes"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Droog71/moontest" = mkLuantiGame {
    name = "moontest";
    release = 20514;
    hash = "0xnqnz2za1sfiqvhil8j0kri6lvdjknqibcgny1wmjvx43hlla8v";
    author = "Droog71";
    provides = [
      "moontest"
      "moontest_conveyors"
      "moontest_lights"
      "moontest_mesecons"
      "moontest_mesecons_button"
      "moontest_mesecons_delayer"
      "moontest_mesecons_gates"
      "moontest_mesecons_materials"
      "moontest_mesecons_microcontroller"
      "moontest_mesecons_noteblock"
      "moontest_mesecons_receiver"
      "moontest_mesecons_switch"
      "moontest_mesecons_torch"
      "moontest_mesecons_wires"
      "moontest_power"
      "moontest_rem"
      "moontest_robots"
      "moontest_screwdriver"
      "moontest_skybox"
      "moontest_teleporter"
      "moontest_terraformer"
      "moontest_wielded_light"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "mt-mods/blockcolor" = mkLuantiGame {
    name = "blockcolor";
    release = 26684;
    hash = "0nnykxkvpydisa9ksbmpj6ca558h5n2dw6wd46zczsp8rwgmwrfy";
    author = "mt-mods";
    provides = [
      "abritorch"
      "airboat"
      "awards"
      "bc_core"
      "beacon"
      "beds"
      "carts"
      "castle_gates"
      "castle_shields"
      "character_creator"
      "color"
      "comboblock"
      "combostair"
      "doors"
      "driftcar"
      "factory_bridges"
      "flags"
      "flowers"
      "formspecs"
      "fullpipe"
      "hdb"
      "hotairballoon"
      "hovercraft"
      "inventory_plus"
      "letterscolors"
      "ma_pops_furniture"
      "mathscolors"
      "mobs"
      "mobs_animal"
      "music"
      "nokill"
      "noncubic"
      "pkarcs"
      "screwdriver"
      "sethome"
      "signs_lib"
      "slope"
      "spaceship"
      "stairs"
      "surfboard"
      "trampoline"
      "trees"
      "water"
      "worldedge"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "1248/labyrinthus" = mkLuantiGame {
    name = "labyrinthus";
    release = 27791;
    hash = "1h3w0rg3822ylkx67hzlszjn7a7v7044mqb88csf5fy9521i0dg2";
    author = "1248";
    provides = [
      "flatgen"
      "labyrinthus"
      "nyancat"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "sfan5/minetest_classic" = mkLuantiGame {
    name = "minetest_classic";
    release = 27717;
    hash = "0laq8y6xb29wf81pnbixz5l1lzq4fy2h2mx1mgdh7if70bxwnx82";
    author = "sfan5";
    provides = [
      "cl_default"
      "creative"
      "sfinv"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "ROllerozxa/brickbuild" = mkLuantiGame {
    name = "brickbuild";
    release = 22773;
    hash = "19k6jkmmn6xgymmi49fmbl8yih2x656rlm3biin489cpgdvmq1qa";
    author = "ROllerozxa";
    provides = [
      "brickbuild"
      "brickbuild_i3"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Wuzzy/lazarr" = mkLuantiGame {
    name = "lazarr";
    release = 27973;
    hash = "1bks7jx95vq1w9k9kw0mvbi3sfi8df9bpb0khidd07dcjwlzprwm";
    author = "Wuzzy";
    provides = [
      "lzr_ambience"
      "lzr_check_movement_settings"
      "lzr_check_world_backend"
      "lzr_core"
      "lzr_csv"
      "lzr_damage"
      "lzr_decor"
      "lzr_devmode"
      "lzr_editor"
      "lzr_fallout"
      "lzr_game_meta"
      "lzr_gamestate"
      "lzr_getitem"
      "lzr_globals"
      "lzr_gui"
      "lzr_hand"
      "lzr_hook"
      "lzr_incomplete_message"
      "lzr_infobooks"
      "lzr_laser"
      "lzr_level_select"
      "lzr_levels"
      "lzr_mapgen"
      "lzr_menu"
      "lzr_messages"
      "lzr_node_drops"
      "lzr_panes"
      "lzr_parrot_npc"
      "lzr_plants"
      "lzr_player"
      "lzr_privs"
      "lzr_protection"
      "lzr_sky"
      "lzr_slowdown"
      "lzr_sounds"
      "lzr_stairs"
      "lzr_teleporter"
      "lzr_tools"
      "lzr_treasure"
      "lzr_triggers"
      "lzr_tt"
      "lzr_util"
      "lzr_weather"
      "lzr_world"
      "no_multiplayer"
      "no_pulverize"
      "player_api"
      "playerphysics"
      "show_wielded_item"
      "tt"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Kimapr/fogblox" = mkLuantiGame {
    name = "fogblox";
    release = 17175;
    hash = "086k4cvgwc8lv5hfvi5fwk78f9kwjdx4ffbfqfcyl9sgi8g7rs15";
    author = "Kimapr";
    provides = [
      "advfload"
      "fogblox"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Sumianvoice/notactuallythebareminimum" = mkLuantiGame {
    name = "notactuallythebareminimum";
    release = 27150;
    hash = "1bxg3cfrx7w2mfcm8h16mm5idkf2j39p30qy2c5lrg7fdqarai67";
    author = "Sumianvoice";
    provides = [
      "nabm_hand"
      "nabm_liquids"
      "nabm_mapgen"
      "nabm_pebbles"
      "nabm_soil"
      "nabm_stone"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "sdd/spiraling_down" = mkLuantiGame {
    name = "spiraling_down";
    release = 16071;
    hash = "0q7j6ldd1wvhr8zsz49vqkd9x8ankbwrcb091ww5vi6a4zhsq54f";
    author = "sdd";
    provides = [
      "fslib"
      "modlib"
      "sd_beacons"
      "sd_hud"
      "sd_inv"
      "sd_laf"
      "sd_map"
      "sd_mobs"
      "sd_player"
      "sd_story"
      "sd_testing"
      "sd_tools"
      "sd_vec_ext"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "VoxelForge/voxelforge" = mkLuantiGame {
    name = "voxelforge";
    release = 27793;
    hash = "0ani6qr8bl7c4fihf1xay9jk3kh75s5wnlvcg70qx7lz2idbxxhs";
    author = "VoxelForge";
    provides = [
      "_vlf_autogroup"
      "awards"
      "controls"
      "doc"
      "doc_identifier"
      "doc_items"
      "findbiome"
      "flowlib"
      "hudbars"
      "mc2mt_2_vlf_aliases"
      "mclvlfa_aliases"
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
      "vl_datapacks"
      "vl_loot"
      "vlf_achievements"
      "vlf_amethyst"
      "vlf_anvils"
      "vlf_armor"
      "vlf_armor_stand"
      "vlf_attached"
      "vlf_autogroup"
      "vlf_bamboo"
      "vlf_banners"
      "vlf_barrels"
      "vlf_beacons"
      "vlf_beds"
      "vlf_beehives"
      "vlf_bells"
      "vlf_biomes"
      "vlf_blackstone"
      "vlf_blast_furnace"
      "vlf_boats"
      "vlf_bone_meal"
      "vlf_bonus_chest"
      "vlf_books"
      "vlf_bossbars"
      "vlf_bows"
      "vlf_brewing"
      "vlf_bubble_column"
      "vlf_buckets"
      "vlf_bundles"
      "vlf_burning"
      "vlf_cake"
      "vlf_campfires"
      "vlf_candles"
      "vlf_cartography_table"
      "vlf_cauldrons"
      "vlf_charges"
      "vlf_cherry_blossom"
      "vlf_chests"
      "vlf_chests_compat"
      "vlf_clock"
      "vlf_cocoas"
      "vlf_colorblocks"
      "vlf_colors"
      "vlf_commands"
      "vlf_comparators"
      "vlf_compass"
      "vlf_composters"
      "vlf_conduits"
      "vlf_copper"
      "vlf_core"
      "vlf_craftguide"
      "vlf_crafting_table"
      "vlf_credits"
      "vlf_crimson"
      "vlf_criticals"
      "vlf_damage"
      "vlf_death_drop"
      "vlf_death_messages"
      "vlf_deepslate"
      "vlf_dispensers"
      "vlf_doc"
      "vlf_doc_basics"
      "vlf_doors"
      "vlf_dripping"
      "vlf_dripstone"
      "vlf_droppers"
      "vlf_dungeons"
      "vlf_dye"
      "vlf_dyes"
      "vlf_enchanting"
      "vlf_end"
      "vlf_end_island"
      "vlf_entity_effects"
      "vlf_entity_invs"
      "vlf_events"
      "vlf_experience"
      "vlf_explosions"
      "vlf_falling_nodes"
      "vlf_farming"
      "vlf_fences"
      "vlf_fire"
      "vlf_fireworks"
      "vlf_fishing"
      "vlf_fletching_table"
      "vlf_flowerpots"
      "vlf_flowers"
      "vlf_formspec"
      "vlf_formspec_prepend"
      "vlf_furnaces"
      "vlf_gamemode"
      "vlf_grindstone"
      "vlf_hbarmor"
      "vlf_heads"
      "vlf_honey"
      "vlf_hoppers"
      "vlf_hunger"
      "vlf_info"
      "vlf_init"
      "vlf_inventory"
      "vlf_item_entity"
      "vlf_itemframes"
      "vlf_itemframes_compat"
      "vlf_json"
      "vlf_jukebox"
      "vlf_lanterns"
      "vlf_lectern"
      "vlf_lib"
      "vlf_lightning"
      "vlf_lightning_rods"
      "vlf_loom"
      "vlf_loot"
      "vlf_luck"
      "vlf_lush_caves"
      "vlf_mangrove"
      "vlf_mapgen_core"
      "vlf_maps"
      "vlf_meshhand"
      "vlf_minecarts"
      "vlf_mobitems"
      "vlf_mobs"
      "vlf_mobspawners"
      "vlf_monster_eggs"
      "vlf_moon"
      "vlf_mud"
      "vlf_mushrooms"
      "vlf_nether"
      "vlf_nether_fortresses"
      "vlf_observers"
      "vlf_ocean"
      "vlf_offhand"
      "vlf_paintings"
      "vlf_panes"
      "vlf_player"
      "vlf_playerinfo"
      "vlf_portals"
      "vlf_pottery_sherds"
      "vlf_powder_snow"
      "vlf_privs"
      "vlf_raids"
      "vlf_raw_ores"
      "vlf_schematics"
      "vlf_sculk"
      "vlf_shields"
      "vlf_signs"
      "vlf_signs_compat"
      "vlf_skins"
      "vlf_smithing_table"
      "vlf_smoker"
      "vlf_sounds"
      "vlf_spawn"
      "vlf_sponges"
      "vlf_sprint"
      "vlf_spyglass"
      "vlf_stairs"
      "vlf_stonecutter"
      "vlf_strongholds"
      "vlf_structures"
      "vlf_sus_nodes"
      "vlf_sus_stew"
      "vlf_target"
      "vlf_temp_helper_recipes"
      "vlf_terrain_features"
      "vlf_textures"
      "vlf_throwing"
      "vlf_title"
      "vlf_tnt"
      "vlf_tools"
      "vlf_torches"
      "vlf_totems"
      "vlf_trees"
      "vlf_trials"
      "vlf_tridents"
      "vlf_tripwire"
      "vlf_tt"
      "vlf_util"
      "vlf_villages"
      "vlf_void_damage"
      "vlf_walls"
      "vlf_weather"
      "vlf_wieldview"
      "vlf_wip"
      "vlf_wither_spawning"
      "vlf_wool"
      "vlf_worlds"
      "vlf_zombie_sieges"
      "vlfx_core"
      "vlfx_fences"
      "vlfx_stairs"
      "walkover"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Hume2/minesweeper_3d" = mkLuantiGame {
    name = "minesweeper_3d";
    release = 17250;
    hash = "1xx6wg97r3rf127p1pqlsc74qbqpr63p1sljrnd0fsvmxjlzvdmp";
    author = "Hume2";
    provides = [
      "3dmines"
      "player_api"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Casimir/voxelgarden" = mkLuantiGame {
    name = "voxelgarden";
    release = 28215;
    hash = "0jk76fjrx60n5lv2wx7jp49lr5nvqhfyx2wdmnksk7jn4sdmls2l";
    author = "Casimir";
    provides = [
      "bedrock2"
      "beds"
      "binoculars"
      "biomedb"
      "boats"
      "bones"
      "bucket"
      "butterflies"
      "carts"
      "compostbin"
      "conifer"
      "controls"
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
      "footsteps"
      "game_commands"
      "group_override"
      "headanim"
      "keys"
      "logging"
      "map"
      "mobs"
      "mobs_flat"
      "mtg_craftguide"
      "nether"
      "physics"
      "placeitem"
      "player_api"
      "playerphysics"
      "screwdriver"
      "sethome"
      "sfinv"
      "show_wielded_item"
      "snowdrift"
      "sprint"
      "stairs"
      "stairsplus"
      "tnt"
      "tt"
      "tt_base"
      "vessels"
      "vg_alloy"
      "vg_alloy_furnace"
      "vg_autogroup"
      "vg_campfire"
      "vg_fallsupport"
      "vg_formspec"
      "vg_hunger"
      "vg_init"
      "vg_item_entity"
      "vg_lighting"
      "vg_logging"
      "vg_mapgen"
      "vg_mobitems"
      "vg_score"
      "vg_sky"
      "vg_weather"
      "vignette"
      "visible_sneak"
      "walls"
      "wool"
      "xpanes"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "benrob0329/ikea" = mkLuantiGame {
    name = "ikea";
    release = 10088;
    hash = "14d2lpypkqkywyagqjlsncgl6z45ggiq59jfinn8p9pjdgwlrrig";
    author = "benrob0329";
    provides = [
      "ikea"
      "ikea_ambiance"
      "ikea_beds"
      "ikea_chairs"
      "ikea_fx"
      "ikea_nightstands"
      "ikea_player"
      "ikea_showroom"
      "ikea_sofas"
      "ikea_staff"
      "ikea_tables"
      "ikea_tools"
      "ikea_warehouse"
      "mobkit"
      "util"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "ROllerozxa/sudoku" = mkLuantiGame {
    name = "sudoku";
    release = 19953;
    hash = "1spc2s2z3al9q86al56lfby3knlxvwqnynazns4bj466fgr970pi";
    author = "ROllerozxa";
    provides = [
      "sudoku"
      "sudoku_gui"
      "sudoku_hud_message"
      "sudoku_player"
    ];
    depends = [ ];
    with_same_name = [ "1248/sudoku" ];
  };
  "xenonca/luckysweeper" = mkLuantiGame {
    name = "luckysweeper";
    release = 10307;
    hash = "1rnsvg94baz3jhqzzwzq35g5nazagxcl9r003yfyz5c1qckpb0q5";
    author = "xenonca";
    provides = [
      "ls_game"
      "player_api"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "StarNinjas/ssp" = mkLuantiGame {
    name = "ssp";
    release = 16164;
    hash = "194crwzwdfjvzsb2xp3mwwjnsb7799nw325ysfx5skxxndi80a22";
    author = "StarNinjas";
    provides = [
      "ambience975_cave_pk1"
      "awards"
      "builtin_item"
      "cave_noises"
      "give_initial_stuff"
      "goodtorch"
      "map"
      "mobs"
      "scary_ambience"
      "sfinv"
      "sloweater"
      "sneak"
      "sneak_glitch"
      "spawn"
      "ssp_base"
      "stamina"
      "uncraft"
      "yolo"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "mt-mods/dreambuilder_game" = mkLuantiGame {
    name = "dreambuilder_game";
    release = 28304;
    hash = "1rc7qw428mvvc3crpwf6ps3r9sng48jlwvwl78rsqcbq0b4cai2n";
    author = "mt-mods";
    provides = [
      "3dmushrooms"
      "ambience"
      "anvil"
      "arrowboards"
      "asphalt"
      "asphaltstairs"
      "bakedclay"
      "basic_materials"
      "basic_signs"
      "bedrock"
      "beds"
      "bees"
      "binoculars"
      "biome_lib"
      "blox"
      "boats"
      "bobblocks"
      "bonemeal"
      "bucket"
      "building_blocks"
      "bushes"
      "bushes_classic"
      "butterflies"
      "carts"
      "castle_farming"
      "castle_gates"
      "castle_lighting"
      "castle_masonry"
      "castle_shields"
      "castle_storage"
      "castle_tapestries"
      "castle_weapons"
      "caverealms"
      "cavestuff"
      "cblocks"
      "coloredwood"
      "computers"
      "concretestairs"
      "constructionarea"
      "cottages"
      "crafting_bench"
      "creative"
      "currency"
      "datastorage"
      "default"
      "delineator"
      "digidisplay"
      "digilines"
      "digistuff"
      "display_blocks_redo"
      "doors"
      "dreambuilder_backcompat"
      "dreambuilder_extras"
      "dreambuilder_hotbar"
      "dreambuilder_mymillwork"
      "dreambuilder_test"
      "dreambuilder_theme_light"
      "dreambuilder_theme_settings"
      "dreambuilder_tweaks"
      "dryplants"
      "dungeon_loot"
      "dye"
      "emergencyphone"
      "env_sounds"
      "extranodes"
      "facade"
      "fake_fire"
      "fakelib"
      "farming"
      "ferns"
      "fire"
      "fireflies"
      "flowers"
      "framedglass"
      "function_delayer"
      "game_commands"
      "gardening"
      "give_initial_stuff"
      "gloopblocks"
      "glooptest"
      "home_vending_machines"
      "home_workshop_machines"
      "home_workshop_misc"
      "homedecor_3d_extras"
      "homedecor_bathroom"
      "homedecor_bedroom"
      "homedecor_books"
      "homedecor_climate_control"
      "homedecor_clocks"
      "homedecor_cobweb"
      "homedecor_common"
      "homedecor_doors_and_gates"
      "homedecor_electrical"
      "homedecor_electronics"
      "homedecor_exterior"
      "homedecor_fences"
      "homedecor_foyer"
      "homedecor_furniture"
      "homedecor_furniture_medieval"
      "homedecor_gastronomy"
      "homedecor_inbox"
      "homedecor_kitchen"
      "homedecor_laundry"
      "homedecor_lighting"
      "homedecor_misc"
      "homedecor_office"
      "homedecor_pictures_and_paintings"
      "homedecor_plasmascreen"
      "homedecor_roofing"
      "homedecor_seating"
      "homedecor_tables"
      "homedecor_trash_cans"
      "homedecor_wardrobe"
      "homedecor_windows_and_treatments"
      "ilights"
      "infrastructure"
      "invsaw"
      "item_drop"
      "itemframes"
      "jumping"
      "labels"
      "lavalamp"
      "led_marquee"
      "locks"
      "manholes"
      "map"
      "maptools"
      "memorandum"
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
      "molehills"
      "moreblocks"
      "moreores"
      "moretrees"
      "mtt"
      "mymillwork"
      "nature_classic"
      "new_campfire"
      "nixie_tubes"
      "phyics_override_legacy_compat"
      "pipeworks"
      "pl_seaweed"
      "pl_sunflowers"
      "pl_waterlilies"
      "plasticbox"
      "player_api"
      "poisonivy"
      "prefab_redo"
      "quartz"
      "replacer"
      "rgblightstone"
      "roadsigns"
      "ropes"
      "screwdriver"
      "sethome"
      "sfinv"
      "signs_lib"
      "simple_streetlights"
      "solidcolor"
      "spawn"
      "stained_glass"
      "stairs"
      "steel"
      "steelsupport"
      "street_signs"
      "streetlamps"
      "streetsawards"
      "streetsconcrete"
      "streetshotfix"
      "streetsmod"
      "streetspoles"
      "technic"
      "technic_chests"
      "technic_cnc"
      "technic_worldgen"
      "titanium"
      "trafficlight"
      "travelnet"
      "trunks"
      "ufos"
      "unified_inventory"
      "unifiedbricks"
      "unifieddyes"
      "unifiedmesecons"
      "vessels"
      "vines"
      "walls"
      "weather"
      "windmill"
      "woodsoils"
      "wool"
      "worldedit"
      "worldedit_brush"
      "worldedit_commands"
      "worldedit_gui"
      "worldedit_shortcommands"
      "xcompat"
      "xpanes"
      "youngtrees"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "mt-mods/driftgame" = mkLuantiGame {
    name = "driftgame";
    release = 23214;
    hash = "0m0v2cxvhms0j528vksh0qqfnmrzj6kxf9hr25i035vp861p18xd";
    author = "mt-mods";
    provides = [
      "dg_gui"
      "dg_hand"
      "dg_light"
      "dg_mapgen"
      "dg_track"
      "dg_trees"
      "driftcar"
      "player_api"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "epCode/what_were_you_expecting" = mkLuantiGame {
    name = "what_were_you_expecting";
    release = 22495;
    hash = "1qjfzabsd7a8kv2jwph74vmy1vjnwvc2769rb96csq81pgrapcr5";
    author = "epCode";
    provides = [
      "controls"
      "what_were_you_expecting_default"
      "wielded_light"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "bell07/whynot_game" = mkLuantiGame {
    name = "whynot_game";
    release = 27829;
    hash = "0iyfq106mwr77fpjqh9ghjlspf74xw4kbm2q08wc6sc7rxyzw6ip";
    author = "bell07";
    provides = [
      "3d_armor"
      "3d_armor_sfinv"
      "3d_armor_stand"
      "abriglass"
      "airutils"
      "ambience"
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
      "awards"
      "backpacks"
      "basic_materials"
      "beds"
      "binoculars"
      "biofuel"
      "boats"
      "bonemeal"
      "bones"
      "boost_cart"
      "bucket"
      "building_blocks"
      "butterflies"
      "campfire"
      "canned_food"
      "carts"
      "ccompass"
      "character_creator"
      "clothing"
      "cloudlands"
      "compost"
      "cozy"
      "creative"
      "creative_maxstack"
      "curtain"
      "default"
      "dice2"
      "doc"
      "doc_basics"
      "doc_items"
      "doc_reveal_chest"
      "doors"
      "dungeon_loot"
      "dye"
      "ediblestuff_api"
      "engrave"
      "fake_fire"
      "farming"
      "fire"
      "fireflies"
      "flower_pot"
      "flowers"
      "flyingcarpet"
      "food"
      "food_basic"
      "food_sweet"
      "game_commands"
      "give_initial_stuff"
      "handholds"
      "hbarmor"
      "hbhunger"
      "hbsprint"
      "heads"
      "hidroplane"
      "home_vending_machines"
      "home_workshop_misc"
      "homedecor_bathroom"
      "homedecor_bedroom"
      "homedecor_books"
      "homedecor_climate_control"
      "homedecor_clocks"
      "homedecor_cobweb"
      "homedecor_common"
      "homedecor_doors_and_gates"
      "homedecor_electrical"
      "homedecor_electronics"
      "homedecor_exterior"
      "homedecor_fences"
      "homedecor_foyer"
      "homedecor_furniture"
      "homedecor_furniture_medieval"
      "homedecor_gastronomy"
      "homedecor_kitchen"
      "homedecor_laundry"
      "homedecor_lighting"
      "homedecor_misc"
      "homedecor_office"
      "homedecor_pictures_and_paintings"
      "homedecor_plasmascreen"
      "homedecor_roofing"
      "homedecor_seating"
      "homedecor_tables"
      "homedecor_trash_cans"
      "homedecor_wardrobe"
      "homedecor_windows_and_treatments"
      "hopper"
      "hudbars"
      "intllib"
      "jumping"
      "keys"
      "laptop"
      "lavalamp"
      "lightning"
      "maidroid"
      "maidroid_core"
      "maidroid_tool"
      "map"
      "maple"
      "mesecons"
      "mesecons_alias"
      "mesecons_blinkyplant"
      "mesecons_button"
      "mesecons_delayer"
      "mesecons_doors"
      "mesecons_extrawires"
      "mesecons_gamecompat"
      "mesecons_insulated"
      "mesecons_lamp"
      "mesecons_lightstone"
      "mesecons_materials"
      "mesecons_movestones"
      "mesecons_mvps"
      "mesecons_noteblock"
      "mesecons_pistons"
      "mesecons_powerplant"
      "mesecons_pressureplates"
      "mesecons_random"
      "mesecons_receiver"
      "mesecons_solarpanel"
      "mesecons_switch"
      "mesecons_torch"
      "mesecons_walllever"
      "mesecons_wires"
      "meseor"
      "minetest_mapgen_config"
      "moarmour"
      "mobs"
      "mobs_ghost_redo"
      "mobs_monster"
      "mtfoods"
      "mtg_plus"
      "my_castle_doors"
      "my_cottage_doors"
      "my_default_doors"
      "my_door_wood"
      "my_fancy_doors"
      "my_future_doors"
      "my_hidden_doors"
      "my_misc_doors"
      "my_old_doors"
      "myroofs"
      "orbs_of_time"
      "orienteering"
      "pbj_pup"
      "pie"
      "plasticbox"
      "player_api"
      "playeranim"
      "princess"
      "rainbowswords"
      "realchess"
      "screwdriver"
      "sethome"
      "sfcraftguide"
      "sfinv"
      "sfinv_buttons"
      "shields"
      "show_wielded_item"
      "skinsdb"
      "slats"
      "smart_sfinv_api"
      "smart_sfinv_creative_bymod"
      "smart_sfinv_creative_sitebar"
      "smart_sfinv_tweaks"
      "spawn"
      "stairs"
      "subspacewalker"
      "supercub"
      "tac_nayn"
      "tnt"
      "toolranks"
      "trash_can"
      "ts_furniture"
      "under_sky"
      "unifieddyes"
      "vessels"
      "waffles"
      "walls"
      "weather"
      "weather_pack"
      "whynot_awards"
      "whynot_compat"
      "wielded_light"
      "wieldview"
      "woodcutting"
      "wool"
      "xcompat"
      "xpanes"
      "yellow_crystals"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "hilol/epic_combat" = mkLuantiGame {
    name = "epic_combat";
    release = 27975;
    hash = "0pp6a966x17p53d3f2yfl6mdagwx8c47m92p0c0ydad81fsrvlm9";
    author = "hilol";
    provides = [
      "3d_armor"
      "3d_armor_ip"
      "3d_armor_sfinv"
      "3d_armor_stand"
      "3d_armor_ui"
      "amethyst"
      "antro_ore"
      "awesome_monsters"
      "battleaxe"
      "beds"
      "binoculars"
      "bloodbane"
      "boats"
      "bones"
      "bucket"
      "bugstone"
      "butterflies"
      "carts"
      "castle_weapons"
      "controls"
      "creative"
      "creatura"
      "ctf_core"
      "ctf_ranged"
      "ctf_teams"
      "daggers"
      "darkness_nerf"
      "default"
      "dmobs"
      "doors"
      "dropondie"
      "dungeon_loot"
      "dye"
      "emerald"
      "env_sounds"
      "epic_combat_sam"
      "epic_combat_trees"
      "epic_combat_zombies"
      "ethereal"
      "farming"
      "fire"
      "fireflies"
      "flowers"
      "game_commands"
      "give_initial_stuff"
      "golem"
      "greatswords"
      "grenades"
      "growler"
      "hammer_of_power"
      "heal"
      "healing_ghost"
      "healing_tool"
      "hud_events"
      "hungry"
      "katanas"
      "keys"
      "leather_armor"
      "lib_chatcmdbuilder"
      "longswords"
      "map"
      "markdown2formspec"
      "meselord"
      "mhud"
      "mob_horse"
      "mobs"
      "mobs_animal"
      "mobs_crocs"
      "mobs_fish"
      "mobs_ghost_redo"
      "mobs_jellyfish"
      "mobs_monster"
      "mobs_sharks"
      "mobs_turtles"
      "moonstone"
      "more_animals"
      "moreores"
      "mtg_craftguide"
      "nether"
      "nether_mobs"
      "nimong"
      "nodes"
      "physics"
      "player_api"
      "rainbow_ore"
      "randungeon"
      "rawf"
      "red_steel"
      "ruby"
      "sapphire"
      "screwdriver"
      "sethome"
      "sfinv"
      "shields"
      "shooter"
      "shooter_crossbow"
      "shooter_flaregun"
      "shooter_grenade"
      "shooter_guns"
      "shooter_hook"
      "shooter_rocket"
      "shooter_turret"
      "sintain_ruby"
      "skullarchers"
      "skullking"
      "skullkingsitems"
      "skulls"
      "skullsword"
      "spawn"
      "spawneggs"
      "spectrum"
      "spoky"
      "stairs"
      "stamina"
      "tnt"
      "vessels"
      "walls"
      "weather"
      "wield3d"
      "wool"
      "wool_armor"
      "xpanes"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Lone_Wolf/voxel_knights" = mkLuantiGame {
    name = "voxel_knights";
    release = 20958;
    hash = "1pwn1nn6780rbxxqhsh3nss20jxrnryki0yzlqhijk91krpda2jh";
    author = "Lone_Wolf";
    provides = [
      "creative"
      "hudbars"
      "matrix"
      "mobkit"
      "mobkit_custom"
      "pathfinder"
      "rhotator"
      "sfinv"
      "spawners"
      "spider"
      "vk_mapgen"
      "vk_nodes"
      "vk_npcs"
      "vk_party"
      "vk_player"
      "vk_player_sky"
      "vk_player_stats"
      "vk_quests"
      "vk_swords"
      "vkore"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Warr1024/nodecore_alpha" = mkLuantiGame {
    name = "nodecore_alpha";
    release = 28024;
    hash = "1q3h3w1y77mv0izgvkv9ghbcy2qckci54pkqy9k0y9vyv8jazqi0";
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
      "nc_api_rotate"
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
    with_same_name = [ ];
  };
  "Noodlemire/voxeldungeon" = mkLuantiGame {
    name = "voxeldungeon";
    release = 9212;
    hash = "1rwg2swq8jrnmq8kfirxnmn7nbg13g6lhb4zq5m08k86vfv1j0zl";
    author = "Noodlemire";
    provides = [
      "3d_armor"
      "3d_armor_sfinv"
      "3d_armor_stand"
      "bedrock2"
      "beds"
      "biome_lib"
      "bones"
      "books_plus"
      "bucket"
      "cannons"
      "charcoal"
      "creative"
      "default"
      "doors"
      "dye"
      "entitycontrol"
      "env_sounds"
      "farming"
      "fire"
      "flowers"
      "game_commands"
      "hbhunger"
      "hudbars"
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
      "mobkit"
      "mobs"
      "mobs_monster"
      "moretrees"
      "nodeglow"
      "on_move_callbacks"
      "player_api"
      "player_monoids"
      "sfinv"
      "smart_vector_table"
      "stairs"
      "tnt"
      "vessels"
      "voxeldungeon"
      "voxelmodel"
      "walls"
      "wieldview"
      "wool"
      "xpanes"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Big_Caballito/no_mans_land" = mkLuantiGame {
    name = "no_mans_land";
    release = 8685;
    hash = "1i02bc86rrfjs1n21f582z4bsx8rk7l5a8sikrchjsz6vk6llvky";
    author = "Big_Caballito";
    provides = [
      "beds"
      "binoculars"
      "boats"
      "bones"
      "bucket"
      "builtin_item"
      "butterflies"
      "carts"
      "default"
      "doors"
      "dungeon_loot"
      "dye"
      "fire"
      "fireflies"
      "flowers"
      "game_commands"
      "give_initial_stuff"
      "hazards"
      "hunger_ng"
      "map"
      "mtg_craftguide"
      "player_api"
      "playerplus"
      "raining_death"
      "redef"
      "screwdriver"
      "sethome"
      "sfinv"
      "snowdrift"
      "snowsong"
      "spawn"
      "stairs"
      "tnt"
      "vessels"
      "walls"
      "weather"
      "wool"
      "xpanes"
      "yolo"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "JavaFXpert/qiskitblocks" = mkLuantiGame {
    name = "qiskitblocks";
    release = 5212;
    hash = "03xa3n6ppvp3dfslb7784rpqwns9g38bayb0b5vpq8hs5w34vfgx";
    author = "JavaFXpert";
    provides = [
      "beds"
      "butterflies"
      "carts"
      "circuit_blocks"
      "creative"
      "csv2terrain"
      "default"
      "doors"
      "dye"
      "farming"
      "fire"
      "fireflies"
      "flowers"
      "game_commands"
      "give_initial_stuff"
      "map"
      "mobs"
      "mobs_monster"
      "mobs_npc"
      "mpd"
      "player_api"
      "q_command"
      "sethome"
      "sfinv"
      "spawn"
      "stairs"
      "vessels"
      "walls"
      "wool"
      "xpanes"
      "xschem"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "debiankaios/proxima_survival" = mkLuantiGame {
    name = "proxima_survival";
    release = 25943;
    hash = "0b1hdj12fg03z6arg3nw3lll2657v3y5kjn5x71f1327x58gkdhp";
    author = "debiankaios";
    provides = [
      "awards"
      "biomes"
      "bucket"
      "climate_api"
      "default"
      "electronic"
      "i3"
      "i3_usage"
      "mobs"
      "networks"
      "online_players"
      "ores"
      "player_api"
      "pxs_awards"
      "pxs_default"
      "pxs_tools"
      "screwdriver"
      "signs_lib"
      "stamina"
      "stats"
      "tubelib2"
      "version"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "nurd3/ul_game" = mkLuantiGame {
    name = "ul_game";
    release = 27574;
    hash = "102x6y23jkc51l3blxc806zvjwaiia3arj65srwm1ivix9ckz56w";
    author = "nurd3";
    provides = [
      "common_storage"
      "lootblocks"
      "mobkit"
      "natural_entities"
      "sfinv"
      "show_pos"
      "show_wielded_item"
      "ul_ambience"
      "ul_basic"
      "ul_inv"
      "ul_magic"
      "ul_mg"
      "ul_mobs"
      "ul_statfx"
      "ul_storage"
      "wielded_light"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "MisterE/blockbomber_editor" = mkLuantiGame {
    name = "blockbomber_editor";
    release = 11519;
    hash = "0pp86c2zjnqdn5rwmxx63x5rimyzzz5f63a78a14hccmdyrg20ll";
    author = "MisterE";
    provides = [
      "bb_nodes"
      "editor"
      "lib_chatcmdbuilder"
      "unified_inventory"
      "worldedit"
      "worldedit_brush"
      "worldedit_commands"
      "worldedit_gui"
      "worldedit_shortcommands"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "wsor4035/farlands_reloaded" = mkLuantiGame {
    name = "farlands_reloaded";
    release = 27815;
    hash = "1zlc6zcr10c6fs8lvfnf1yng9sfacq9j2556n77rs5zd04yyqrvd";
    author = "wsor4035";
    provides = [
      "fl_agriculture"
      "fl_avation"
      "fl_beds"
      "fl_boats"
      "fl_bones"
      "fl_books"
      "fl_bottles"
      "fl_bricks"
      "fl_builtin"
      "fl_chat"
      "fl_core"
      "fl_custom"
      "fl_doors"
      "fl_dyes"
      "fl_fire"
      "fl_furniture"
      "fl_glass"
      "fl_hand"
      "fl_hunger"
      "fl_industrial"
      "fl_light_sources"
      "fl_liquids"
      "fl_mapgen"
      "fl_ores"
      "fl_paintings"
      "fl_plantlife"
      "fl_player"
      "fl_signs"
      "fl_stairs"
      "fl_stone"
      "fl_storage"
      "fl_tnt"
      "fl_tools"
      "fl_topsoil"
      "fl_trains"
      "fl_trees"
      "fl_wildlife"
      "fl_wool"
      "fl_workshop"
      "fl_zoom"
      "i3"
      "mobkit"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "1248/sudoku" = mkLuantiGame {
    name = "sudoku";
    release = 16822;
    hash = "1r7f2jd9r59hijnlks4wycd6p75bspp67b9a1652afki4awar352";
    author = "1248";
    provides = [ "sudoku" ];
    depends = [ ];
    with_same_name = [ "ROllerozxa/sudoku" ];
  };
  "grorp/cascade" = mkLuantiGame {
    name = "cascade";
    release = 15574;
    hash = "14rhaawfvd5023icrq9wwdss6cm307mnvf7m0qzz9rqwqi5q6nzj";
    author = "grorp";
    provides = [ "cascade" ];
    depends = [ ];
    with_same_name = [ ];
  };
  "wsor4035/minekart" = mkLuantiGame {
    name = "minekart";
    release = 9477;
    hash = "0gw3gr8zm81kmcx0pkq7i5hi3wyhgljlxfqb65r6sl8g6qns5k5w";
    author = "wsor4035";
    provides = [
      "kartcar"
      "mk_editor"
      "mk_kart_manager"
      "mk_mapgen"
      "mk_player"
      "mk_track_manager"
      "mk_track_nodes"
      "mobkit"
      "trackelements"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "LibraSubtilis/minebase" = mkLuantiGame {
    name = "minebase";
    release = 7815;
    hash = "1baj530cn7y5mkbjl5f81rw5pdl9zygw15d93gfzxk7qk7ddg25z";
    author = "LibraSubtilis";
    provides = [
      "base_beds"
      "base_biomes"
      "base_books"
      "base_bushes"
      "base_carts"
      "base_doors"
      "base_earth"
      "base_env_sounds"
      "base_fences"
      "base_fire"
      "base_flowers"
      "base_furnaces"
      "base_glass"
      "base_grasses"
      "base_hand"
      "base_hoes"
      "base_hydrophytes"
      "base_initial_stuff"
      "base_inv"
      "base_ladders"
      "base_liquids"
      "base_ores"
      "base_permissions"
      "base_players"
      "base_rails"
      "base_screwdrivers"
      "base_signs"
      "base_soil"
      "base_sounds"
      "base_tools"
      "base_trapdoors"
      "base_trees"
      "base_vessels"
      "base_walls"
      "beds_api"
      "beds_mtg"
      "binoculars"
      "biomes_api"
      "boats"
      "bones"
      "books_api"
      "books_mtg"
      "boolean"
      "buckets_api"
      "buckets_dungeon_loot"
      "buckets_lava"
      "buckets_mtg"
      "buckets_river_water"
      "buckets_water"
      "builtin_item"
      "butterflies"
      "cactus"
      "carts_api"
      "carts_dungeon_loot"
      "carts_mtg"
      "chests"
      "clay"
      "clay_stairs"
      "containers_api"
      "containers_mtg"
      "cotton"
      "craft"
      "creative"
      "doors_api"
      "doors_mtg"
      "dungeon_loot_api"
      "dye"
      "dyes_api"
      "earth_api"
      "earth_dungeon_loot"
      "earth_mtg"
      "earth_sounds"
      "earth_stairs"
      "engine_check"
      "env_sounds_api"
      "fancy_beds"
      "farming_api"
      "farming_dungeon_loot"
      "farming_mtg"
      "fences_api"
      "fences_mtg"
      "fire_api"
      "fire_env_sounds"
      "fire_mtg"
      "fireflies"
      "flowers_api"
      "flowers_mtg"
      "formspecs"
      "furnaces_api"
      "furnaces_mtg"
      "glass_api"
      "glass_dungeon_loot"
      "glass_mtg"
      "glass_sounds"
      "glass_stairs"
      "glass_xpanes"
      "grasses_api"
      "grasses_mtg"
      "hydrophytes_api"
      "hydrophytes_mtg"
      "initial_stuff_api"
      "inv_utils"
      "killme"
      "ladders_api"
      "ladders_mtg"
      "lights_api"
      "lights_mtg"
      "liquid_sounds"
      "liquid_stairs"
      "liquids_api"
      "liquids_dungeon_loot"
      "liquids_mtg"
      "magnifiers_api"
      "maps"
      "meselamps"
      "mossy"
      "mossy_stairs"
      "mossy_walls"
      "mounts_api"
      "ore_sounds"
      "ore_stairs"
      "ores_api"
      "ores_dungeon_loot"
      "ores_mtg"
      "permissions_api"
      "players_api"
      "pterygota_api"
      "pterygota_mtg"
      "rand"
      "screwdrivers_api"
      "screwdrivers_mtg"
      "seats_api"
      "sethome"
      "sfcraftguide"
      "sfinv_api"
      "shelves"
      "signs_api"
      "signs_mtg"
      "sounds_api"
      "spawn"
      "stairs_api"
      "stairs_mtg"
      "steel_bar_doors"
      "steel_bar_stairs"
      "steel_bar_xpanes"
      "steel_bars"
      "t4b"
      "tools_api"
      "tools_dungeon_loot"
      "tools_mtg"
      "torches"
      "trash"
      "tree_sounds"
      "tree_stairs"
      "trees_api"
      "trees_dungeon_loot"
      "trees_mtg"
      "vessels_api"
      "vessels_mtg"
      "walls_api"
      "walls_mtg"
      "weather"
      "wheat"
      "wheat_stairs"
      "wool"
      "xpanes_api"
      "xpanes_mtg"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "PetiAPocok/minetest_extended" = mkLuantiGame {
    name = "minetest_extended";
    release = 7305;
    hash = "0qcc4yny4zkni7mczqcq79h76kzz5qi1dizf66nqd2xs5mlapg2a";
    author = "PetiAPocok";
    provides = [
      "3d_armor"
      "3d_armor_sfinv"
      "3d_armor_stand"
      "alchemy"
      "bakedclay"
      "beacons"
      "beds"
      "binoculars"
      "boats"
      "bones"
      "bucket"
      "butterflies"
      "carpets"
      "carts"
      "cement"
      "clouds"
      "craftguide"
      "creative"
      "death_announce"
      "decorate_dungeons"
      "default"
      "doors"
      "dungeon_loot"
      "dye"
      "effects_hud"
      "env_sounds"
      "farming"
      "fire"
      "fire_plus"
      "fireflies"
      "fishing"
      "floating_islands"
      "flowerpot"
      "flowers"
      "flying_carpet"
      "foods"
      "frame"
      "game_commands"
      "gems_amber"
      "gems_amethyst"
      "gems_bloodstone"
      "gems_emerald"
      "gems_quartz"
      "gems_ruby"
      "gems_sapphire"
      "gems_topaz"
      "ghost_ship"
      "give_initial_stuff"
      "hangglider"
      "hbarmor"
      "hbhunger"
      "hbmana"
      "hbsprint"
      "health_adjuster"
      "hudbars"
      "hungry_mana"
      "industrial_furnace"
      "interdimensional_altars"
      "item_info"
      "lava_cooling"
      "map"
      "mapgen_ore_redefine"
      "mese_miner"
      "mesecons"
      "mesecons_alias"
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
      "mesecons_materials"
      "mesecons_movestones"
      "mesecons_mvps"
      "mesecons_noteblock"
      "mesecons_pistons"
      "mesecons_pressureplates"
      "mesecons_random"
      "mesecons_receiver"
      "mesecons_solarpanel"
      "mesecons_stickyblocks"
      "mesecons_switch"
      "mesecons_torch"
      "mesecons_walllever"
      "mesecons_wires"
      "mex_chariot"
      "mex_morebeds"
      "mex_moreblocks"
      "mex_moredoors"
      "mex_tales"
      "mobs"
      "mobs_animal"
      "mobs_crocs"
      "mobs_fish"
      "mobs_horse"
      "mobs_jellyfish"
      "mobs_monster"
      "mobs_nether"
      "mobs_npc"
      "mobs_sharks"
      "mobs_turtles"
      "nether"
      "nether_ores"
      "orb_of_digging"
      "orb_of_fire"
      "orb_of_healing"
      "orb_of_ice"
      "orb_of_light"
      "orb_of_lightning"
      "orb_of_nature"
      "orb_of_rainbow"
      "orb_of_shadow"
      "orb_of_vampirism"
      "orb_of_wind"
      "paintings"
      "player_api"
      "recycler"
      "screwdriver"
      "sethome"
      "sfinv"
      "shields"
      "skinsdb"
      "slingshot"
      "snowball"
      "spawn"
      "stairs"
      "teleports"
      "throwing"
      "throwing_arrows"
      "tnt"
      "ts_furniture"
      "tsm_pyramids"
      "vessels"
      "void_bags"
      "walking_light"
      "walls"
      "wieldview"
      "wool"
      "worldedit"
      "worldedit_brush"
      "worldedit_commands"
      "worldedit_gui"
      "worldedit_shortcommands"
      "xpanes"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Warr1024/fdmcube" = mkLuantiGame {
    name = "fdmcube";
    release = 27017;
    hash = "1ziwyz8h4qz12ny31p684sy4pv2s14k9zw2g6ivmx28cmbxxy5h6";
    author = "Warr1024";
    provides = [
      "fdm_api"
      "fdm_mapgen"
      "fdm_material"
      "fdm_nav"
      "fdm_player"
      "fdm_validate"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "mooD_Slayer/ksurvive" = mkLuantiGame {
    name = "ksurvive";
    release = 10346;
    hash = "1s3if3zbrnf8darasr6swm3sm5pkglhzakfbm0lwrj3f3dhpvjxd";
    author = "mooD_Slayer";
    provides = [
      "adze"
      "bucket"
      "concrete"
      "crafting"
      "default"
      "embers"
      "foodstuff"
      "furniture"
      "glass"
      "glue"
      "help"
      "letters"
      "metals"
      "nature"
      "pitch"
      "player_api"
      "rocks"
      "secret_mods"
      "walking_light"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "jgordon510/color_block" = mkLuantiGame {
    name = "color_block";
    release = 27110;
    hash = "0kgrp8pyh5a8sn4vfhmsnj2a7i6agcnn5ffpcnnfqjj83kbf62ln";
    author = "jgordon510";
    provides = [
      "color_block"
      "player_api"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "dibesfer/colorlandia" = mkLuantiGame {
    name = "colorlandia";
    release = 28289;
    hash = "167mqsgzw0lr39yjk2fp782yhxcidbgca8pz2aimaybh71pbacmr";
    author = "dibesfer";
    provides = [
      "colorlandia_colorland"
      "colorlandia_gui"
      "colorlandia_hand"
      "colorlandia_sky"
      "creative"
      "datatest"
      "minimalism"
      "paint"
      "player_api"
      "sethome"
      "sfinv"
      "spawn_command"
      "symbocracy"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "PyuDev/pyutest" = mkLuantiGame {
    name = "pyutest";
    release = 28271;
    hash = "1l891qv5zyzhxp249yvnn74rzsdcdsvxfgk2djrsj1rk7hl4yyq7";
    author = "PyuDev";
    provides = [
      "mobs"
      "pyutest"
      "pyutest_basicsettings"
      "pyutest_blocks"
      "pyutest_buckets"
      "pyutest_cmds"
      "pyutest_crafts"
      "pyutest_electricity"
      "pyutest_entities"
      "pyutest_environment"
      "pyutest_farming"
      "pyutest_flowers"
      "pyutest_furnace"
      "pyutest_furniture"
      "pyutest_grass"
      "pyutest_home"
      "pyutest_inventory"
      "pyutest_leaves"
      "pyutest_lootboxes"
      "pyutest_magic"
      "pyutest_mapgen"
      "pyutest_mobs"
      "pyutest_ores"
      "pyutest_overrides"
      "pyutest_overworld"
      "pyutest_player"
      "pyutest_tools"
      "pyutest_upgrades"
      "pyutest_wood"
      "pyutest_wool"
      "pyutest_worlds"
      "unified_inventory"
      "walkover"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "niwla23/runorfall" = mkLuantiGame {
    name = "runorfall";
    release = 4155;
    hash = "0n2p994n6mhl1p71c1brc7qb6wvbxcmj0b3f0743j9gakxqzq6jp";
    author = "niwla23";
    provides = [
      "bakedclay"
      "creative"
      "default"
      "gameplay"
      "hbsprint"
      "hudbars"
      "leaderboard"
      "player_api"
      "player_hash_skin"
      "sfinv"
      "worldedit"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "miroptics/qiskitblocks_miro" = mkLuantiGame {
    name = "qiskitblocks_miro";
    release = 26302;
    hash = "0ryarb41i1gblz0h7b76bd13nj5lmz1p108k09dd1px7d76vg828";
    author = "miroptics";
    provides = [
      "beds"
      "butterflies"
      "carts"
      "circuit_blocks"
      "creative"
      "csv2terrain"
      "default"
      "doors"
      "dye"
      "farming"
      "fire"
      "fireflies"
      "flowers"
      "game_commands"
      "give_initial_stuff"
      "map"
      "mobs"
      "mobs_monster"
      "mobs_npc"
      "mpd"
      "player_api"
      "q_command"
      "sethome"
      "sfinv"
      "spawn"
      "stairs"
      "vessels"
      "walls"
      "wool"
      "xpanes"
      "xschem"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Lone_Wolf/torrlund" = mkLuantiGame {
    name = "torrlund";
    release = 22074;
    hash = "0mgyrmc6jkb2mq6a0zqqgjwv7pm66z44lqmhimy2pp28rc9g8l7b";
    author = "Lone_Wolf";
    provides = [
      "creative"
      "creatura"
      "fire_m"
      "headanim"
      "player_api"
      "screwdriver"
      "sfinv"
      "show_wielded_item"
      "torrl_aliens"
      "torrl_bgm"
      "torrl_core"
      "torrl_effects"
      "torrl_mapgen"
      "torrl_meteors"
      "torrl_nodes"
      "torrl_player"
      "torrl_sky"
      "torrl_tools"
      "torrl_voiceover"
      "wield3d"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "danil_2461/ketchupland" = mkLuantiGame {
    name = "ketchupland";
    release = 16944;
    hash = "1mlh3ichrav353cwpsvdxsw5f3i656py9y2n0blr7z219d5y4ydj";
    author = "danil_2461";
    provides = [
      "kl_api"
      "kl_baseplate"
      "kl_chests"
      "kl_colours"
      "kl_gui"
      "kl_hand"
      "kl_inventory"
      "kl_items"
      "kl_mapgen"
      "kl_nodes"
      "kl_player"
      "kl_spawning"
      "kl_stairs"
      "kl_tools"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "BRNSystems/blocky_portaling" = mkLuantiGame {
    name = "blocky_portaling";
    release = 16327;
    hash = "0mvw71qqzbs2l7m0gjra6xzqabvdnmn9m1dalj5h7blvmyw02bxr";
    author = "BRNSystems";
    provides = [
      "an_televator"
      "blocky_portaling_modgen"
      "digicontrol"
      "digilines"
      "digilines_memory"
      "digiprinter"
      "digistuff"
      "enable_shadows"
      "lwcomponents"
      "memorandum"
      "mesecons"
      "mesecons_alias"
      "mesecons_blinkyplant"
      "mesecons_button"
      "mesecons_commandblock"
      "mesecons_delayer"
      "mesecons_detector"
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
      "mesecons_window"
      "mesecons_wireless"
      "mesecons_wires"
      "mesetec"
      "nixie_tubes"
      "no_fall_damage"
      "player"
      "player_api"
      "portalgun"
      "unified_inventory"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "wsor4035/airgame" = mkLuantiGame {
    name = "airgame";
    release = 22491;
    hash = "081hlxcfjwxra5s1l8px5mikcjcnxjdcj2b3l0fyff0fsixxf7y9";
    author = "wsor4035";
    provides = [ "airsword" ];
    depends = [ ];
    with_same_name = [ ];
  };
  "1248/regnum2" = mkLuantiGame {
    name = "regnum2";
    release = 25437;
    hash = "1h7rk87xc53842pd5anx7h9b4c1gzsc5llaalgqy2yjij4nj9c8l";
    author = "1248";
    provides = [
      "3d_armor"
      "3d_armor_ip"
      "3d_armor_stand"
      "bags"
      "ban_hammer"
      "beds"
      "binoculars"
      "boats"
      "bones"
      "bucket"
      "butterflies"
      "carts"
      "city_block"
      "concrete"
      "creative"
      "default"
      "doors"
      "dungeon_loot"
      "dye"
      "env_sounds"
      "experience"
      "extranodes"
      "farming"
      "fire"
      "fireflies"
      "flowers"
      "game_commands"
      "gems"
      "give_initial_stuff"
      "helicopter"
      "hudbars"
      "inventory_music"
      "inventory_plus"
      "keys"
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
      "mesecons_switch"
      "mesecons_torch"
      "mesecons_walllever"
      "mobs"
      "mobs_bat"
      "mobs_birds"
      "mobs_butterfly"
      "mobs_crocs"
      "mobs_fish"
      "mobs_jellyfish"
      "mobs_sharks"
      "mobs_turtles"
      "more_chests"
      "moreores"
      "nyancat"
      "pep"
      "pipeworks"
      "player_api"
      "playereffects"
      "protector"
      "screwdriver"
      "sethome"
      "sfinv"
      "shields"
      "shop"
      "skins"
      "spawn"
      "stairs"
      "technic"
      "technic_chests"
      "technic_worldgen"
      "tnt"
      "travelnet"
      "tutorial"
      "vessels"
      "walls"
      "weather"
      "wieldview"
      "wool"
      "wrench"
      "xpanes"
      "xray"
      "zcg"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Emojiminetest/r_place" = mkLuantiGame {
    name = "r_place";
    release = 24909;
    hash = "1rcxmwvl1s5prirjnzr7darz47xfnallcc21b8zy6dz9n10gj977";
    author = "Emojiminetest";
    provides = [
      "random_messages_api"
      "rp_analysis"
      "rp_color_pick"
      "rp_core"
      "rp_export"
      "rp_export_json"
      "rp_init"
      "rp_initial_message"
      "rp_mapgen_nodes"
      "rp_moderation"
      "rp_nodes"
      "rp_random_messages"
      "rp_snapshot"
      "rp_utils"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "thvk/spacetest" = mkLuantiGame {
    name = "spacetest";
    release = 25503;
    hash = "19f9zj9fxps2rx5wchrd0va7jwy9rbdmkiiisrw8j5lng0144hny";
    author = "thvk";
    provides = [
      "st_core"
      "st_nodes"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "1248/agon" = mkLuantiGame {
    name = "agon";
    release = 23323;
    hash = "0gp24ga7zcgj7ypnspp8f0wglg27kg64d31pnslglhixxl70snq6";
    author = "1248";
    provides = [
      "agon"
      "hudbars"
      "mobs"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "KareaGhandTrail/block_assault_mapmaker" = mkLuantiGame {
    name = "block_assault_mapmaker";
    release = 21764;
    hash = "1ln3mdpbpj8br4j74bac6hr0xxad8ip0k07kgjmr69qr3wliv1bc";
    author = "KareaGhandTrail";
    provides = [
      "beds"
      "bones"
      "bs_blocks_and_decorations"
      "bs_chat_color"
      "bs_helpers"
      "creative"
      "default"
      "doors"
      "dye"
      "env_sounds"
      "fire"
      "map_engine"
      "player_api"
      "screwdriver"
      "sfinv"
      "stairs"
      "tnt"
      "unified_inventory"
      "wool"
      "worldedit"
      "worldedit_brush"
      "worldedit_commands"
      "worldedit_gui"
      "worldedit_shortcommands"
      "xpanes"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "LMD/cellestial_game" = mkLuantiGame {
    name = "cellestial_game";
    release = 18356;
    hash = "10hxb0a80q7c80wjrzi143d0w2wkksblmwfgkwgivb7vmlxnbllg";
    author = "LMD";
    provides = [
      "adv_chat"
      "cellestial"
      "cellestiall"
      "cmdlib"
      "hud_timers"
      "modlib"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Emojiminetest/langton" = mkLuantiGame {
    name = "langton";
    release = 13037;
    hash = "014w39d9iappgaqwwbh9vchl2dhd9hg1szslijx6gycp2cmahw4m";
    author = "Emojiminetest";
    provides = [
      "langton"
      "lg_mapgen"
      "startup"
      "void_hand"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Emojiminetest/reject" = mkLuantiGame {
    name = "reject";
    release = 16542;
    hash = "0zajki28f8wks95icybmmi5mymc2svcz8wkf7dl1gnn05xd02wnn";
    author = "Emojiminetest";
    provides = [ "reject_core" ];
    depends = [ ];
    with_same_name = [ ];
  };
  "5uper1ach/szombie" = mkLuantiGame {
    name = "szombie";
    release = 26412;
    hash = "19bsp188gry0i7krliyzrykgpvsljwjbxmsa2i1g288px3f7ghv9";
    author = "5uper1ach";
    provides = [
      "mobs"
      "mobs_monster"
      "shooter"
      "shooter_guns"
      "szombie_core"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "group_foo/ghost_crypt" = mkLuantiGame {
    name = "ghost_crypt";
    release = 22558;
    hash = "03jihnfkhych6gfdrp3lnlqnwh0p7hfgdbn1ay1qmyxy3ha72a3y";
    author = "group_foo";
    provides = [ "ghost_crypt_main" ];
    depends = [ ];
    with_same_name = [ ];
  };
  "1248/regnum" = mkLuantiGame {
    name = "regnum";
    release = 27837;
    hash = "186bd70sz6kap8bc8x42cbys1wnw6rjgslnz75mj6f0xadk5lwjs";
    author = "1248";
    provides = [
      "3d_armor"
      "3d_armor_ip"
      "3d_armor_stand"
      "awards"
      "bags"
      "ban_hammer"
      "beds"
      "binoculars"
      "boats"
      "bones"
      "bucket"
      "butterflies"
      "carts"
      "city_block"
      "concrete"
      "creative"
      "default"
      "doors"
      "dungeon_loot"
      "dye"
      "env_sounds"
      "experience"
      "extranodes"
      "farming"
      "fire"
      "fireflies"
      "flowers"
      "game_commands"
      "gems"
      "give_initial_stuff"
      "helicopter"
      "hudbars"
      "inventory_music"
      "inventory_plus"
      "keys"
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
      "mesecons_switch"
      "mesecons_torch"
      "mesecons_walllever"
      "mobs"
      "mobs_bat"
      "mobs_birds"
      "mobs_butterfly"
      "mobs_crocs"
      "mobs_fish"
      "mobs_jellyfish"
      "mobs_sharks"
      "mobs_turtles"
      "more_chests"
      "moreores"
      "nyancat"
      "pipeworks"
      "player_api"
      "protector"
      "screwdriver"
      "sethome"
      "sfinv"
      "shields"
      "shop"
      "skins"
      "spawn"
      "stairs"
      "technic"
      "technic_chests"
      "technic_worldgen"
      "tnt"
      "travelnet"
      "tutorial"
      "vessels"
      "walls"
      "weather"
      "wieldview"
      "wool"
      "wrench"
      "xpanes"
      "zcg"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "VeproGames/100_minerals_to_success" = mkLuantiGame {
    name = "100_minerals_to_success";
    release = 14749;
    hash = "1dkzxgyzgb458b08pb941iacr954z86krvmjrkd00a8lyx4rg5cw";
    author = "VeproGames";
    provides = [
      "mts_bedrock"
      "mts_bignumber"
      "mts_default"
      "mts_formatter"
      "mts_inventory"
      "mts_lights"
      "mts_liquids"
      "mts_mapgen"
      "mts_permaday"
      "mts_pickcrafting"
      "mts_plants"
      "mts_powercrystals"
      "mts_teleporters"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Astrobe/minefall" = mkLuantiGame {
    name = "minefall";
    release = 26311;
    hash = "0xw32y0sgy7xh09ffi4mmfqpvqpcp7qs56a9wkgkbpgv63y5cibq";
    author = "Astrobe";
    provides = [
      "3d_armor"
      "3d_armor_sfinv"
      "a_trees"
      "abyss"
      "anchorstone"
      "anvil"
      "beacon"
      "bigshroom"
      "bones"
      "channels"
      "cloth"
      "compass"
      "craft_table"
      "craftguide"
      "damage_number"
      "dungeon_crates"
      "env_sounds"
      "exchange_shop"
      "farming"
      "fire"
      "flowers"
      "glider"
      "headanim"
      "hudbars"
      "key_labels"
      "lightning"
      "melding"
      "melt"
      "mf"
      "mf_airtank"
      "mf_armor"
      "mf_atrees"
      "mf_decor"
      "mf_default"
      "mf_doors"
      "mf_help"
      "mf_lamps"
      "mf_npc"
      "mf_spears"
      "mf_stairs"
      "mf_tnt"
      "mfwm"
      "mob_bee"
      "mob_beetle"
      "mob_cats"
      "mob_manti"
      "mob_mogall"
      "mob_shadow"
      "mob_spider"
      "mob_wasp"
      "mob_whale"
      "mobs"
      "mobs_butterfly"
      "mobs_crab"
      "mobs_fish"
      "more_mese"
      "peri"
      "player_api"
      "rp"
      "rploot"
      "ruins"
      "screwdriver"
      "sfinv"
      "simple_skins"
      "smoke"
      "snowdrift"
      "void_chest"
      "wands"
      "wieldview"
      "yatpm"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "rlars/occupymoon_game" = mkLuantiGame {
    name = "occupymoon_game";
    release = 15950;
    hash = "0l9i0czxb7m6h4hl00acj637pgdb6ipwai6smr3id4wkbq6pq8r5";
    author = "rlars";
    provides = [
      "3d_armor"
      "3d_armor_ip"
      "3d_armor_sfinv"
      "3d_armor_stand"
      "3d_armor_ui"
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
      "basic_materials"
      "concrete"
      "default"
      "doors"
      "dye"
      "extranodes"
      "farming"
      "flowers"
      "omg_missions"
      "omg_moonrealm"
      "omg_world"
      "pipeworks"
      "player_api"
      "player_monoids"
      "scifi_nodes"
      "screwdriver"
      "shields"
      "spacesuit"
      "stairs"
      "technic"
      "technic_chests"
      "technic_cnc"
      "technic_worldgen"
      "vacuum"
      "vessels"
      "weld_all_bot"
      "wieldview"
      "wool"
      "wrench"
      "zones"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "giga-turbo/codecube" = mkLuantiGame {
    name = "codecube";
    release = 12748;
    hash = "1yr41ivr6ynph3vi753pakr9vn00fwfc6d0gzc8q4wz3px53h07f";
    author = "giga-turbo";
    provides = [
      "cc_day"
      "cc_mapgen"
      "cc_security"
      "codeblock"
      "default"
      "dye"
      "formspecs"
      "vector3"
      "wool"
      "worldedit"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Panquesito7/panqkart" = mkLuantiGame {
    name = "panqkart";
    release = 24018;
    hash = "1gbnqaqk1z1m4pnk5wrsb7196dz4jl5yn0sc8v418ydj38bix6fv";
    author = "Panquesito7";
    provides = [
      "abriglass"
      "abripanes"
      "beds"
      "creative"
      "default"
      "doors"
      "dye"
      "env_sounds"
      "farming"
      "fire"
      "flowers"
      "formspec_ast"
      "hud_fs"
      "lib_mount"
      "maptools"
      "modgen"
      "moreblocks"
      "pk_checkpoints"
      "pk_chest"
      "pk_core"
      "pk_info"
      "pk_lobby"
      "pk_nodes"
      "pk_premium"
      "pk_shop"
      "pk_track_level"
      "player_api"
      "random_messages"
      "screwdriver"
      "sfinv"
      "stairs"
      "streets"
      "ts_workshop"
      "vehicle_mash"
      "vessels"
      "wool"
      "worldedit"
      "worldedit_brush"
      "worldedit_commands"
      "worldedit_gui"
      "worldedit_shortcommands"
      "xpanes"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "jordan4ibanez/forgotten_lands" = mkLuantiGame {
    name = "forgotten_lands";
    release = 25207;
    hash = "02jr7bvxhrpz9rawa48zzy2v9pacqxqd0jbfzbfignzaygsva0kn";
    author = "jordan4ibanez";
    provides = [
      "forgotten_lands_animation_station"
      "forgotten_lands_anti_complain"
      "forgotten_lands_blocks"
      "forgotten_lands_controls"
      "forgotten_lands_formspec"
      "forgotten_lands_hand"
      "forgotten_lands_item_drop"
      "forgotten_lands_item_entity"
      "forgotten_lands_items"
      "forgotten_lands_minecart"
      "forgotten_lands_mob"
      "forgotten_lands_models"
      "forgotten_lands_player_inventory"
      "forgotten_lands_player_model"
      "forgotten_lands_recipes"
      "forgotten_lands_shadows"
      "forgotten_lands_sounds"
      "forgotten_lands_testing"
      "forgotten_lands_textures"
      "forgotten_lands_tools"
      "forgotten_lands_types"
      "forgotten_lands_utility"
      "forgotten_lands_world_generation"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "TheFanne/raining_nodes" = mkLuantiGame {
    name = "raining_nodes";
    release = 1787;
    hash = "0r3w9vll0xl10v8595w1kcj5gijz69h8jlbpvd9jafhqwgwb8qhx";
    author = "TheFanne";
    provides = [
      "bedrock"
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
      "farming"
      "fire"
      "fireflies"
      "flowers"
      "game_commands"
      "give_initial_stuff"
      "map"
      "player_api"
      "screwdriver"
      "sethome"
      "sfinv"
      "sky_nodes"
      "spawn"
      "stairs"
      "tnt"
      "vessels"
      "walls"
      "wool"
      "xpanes"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Blockhead/sotm" = mkLuantiGame {
    name = "sotm";
    release = 15416;
    hash = "0vqi2ghr4sq208bw5w1y3y0zr1qd8xgkn6vx9wjn6agy95dwgirw";
    author = "Blockhead";
    provides = [
      "player_api"
      "sfinv"
      "sotm_builtin_item"
      "sotm_gui"
      "sotm_mapgen"
      "sotm_nodes"
      "sotm_physics"
      "sotm_player"
      "sotm_story"
      "sotm_tools"
      "sotm_weather"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "StarNinjas/veil_of_the_unknown" = mkLuantiGame {
    name = "veil_of_the_unknown";
    release = 22511;
    hash = "0f3l1sk47nsgdk9r6iz67wlcphnnxnyr5byy5jkvgf86w5n1xrci";
    author = "StarNinjas";
    provides = [
      "ambience"
      "awards"
      "bell"
      "fire"
      "give_initial_stuff"
      "item_drop"
      "mobs"
      "mobs_animal"
      "sfinv"
      "vu_base"
      "vu_heartbeat"
      "vu_music"
      "wield_events"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "chaosomnium/mining_game" = mkLuantiGame {
    name = "mining_game";
    release = 7428;
    hash = "0zc60ljz0kyj7303jjbzgq7dfl6dh7xxavgy21190qihilqwksvk";
    author = "chaosomnium";
    provides = [
      "base"
      "joke_currency"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "cx384/snake_3d" = mkLuantiGame {
    name = "snake_3d";
    release = 10140;
    hash = "0wvngyh0d3v77nzc7kfi51r7vm685q2lvzmgjqqsfh3i5wcq2pfj";
    author = "cx384";
    provides = [ "snake_3d" ];
    depends = [ ];
    with_same_name = [ ];
  };
  "crabycowman123/spmeter" = mkLuantiGame {
    name = "spmeter";
    release = 11007;
    hash = "0w42v2xmxfc9149j9pm0a97n5qr6s795dl87kpl4ln6b08dkpxi0";
    author = "crabycowman123";
    provides = [
      "blankslate"
      "colors"
      "give_initial_stuff"
      "minetestrpg_blocks"
      "mobs"
      "mtr_currency"
      "mtr_debug"
      "mtr_mapgen"
      "mtr_monsters"
      "mtr_resources"
      "mtr_shop"
      "mtr_weapons"
      "void_damage"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "xenonca/luckydude" = mkLuantiGame {
    name = "luckydude";
    release = 10139;
    hash = "1g701kswjdl2nfjzdc712xmcrgaahs6q5jafz3d6jq5rck4zx0i3";
    author = "xenonca";
    provides = [
      "ld_game"
      "player_api"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Charleston314/fill_the_void" = mkLuantiGame {
    name = "fill_the_void";
    release = 22490;
    hash = "06y7190zy0sy151lx2zbaq3spm7yaa1gk238w8fg2bcvdz0wlkb4";
    author = "Charleston314";
    provides = [
      "fv_choices"
      "fv_hand"
      "fv_terrain"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Nathan.S/rob_opr" = mkLuantiGame {
    name = "rob_opr";
    release = 22770;
    hash = "0shhnwp00yd6wpc30w6bsjrb5r0c6n3s2y24yldzkxilz72ijm4i";
    author = "Nathan.S";
    provides = [
      "modgen_mod_export"
      "rob_opr_base"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "1248/stella" = mkLuantiGame {
    name = "stella";
    release = 10125;
    hash = "0flvgj62hxvdrjyj0yqijhc0c82c691k1zz40b374dagirhsl6na";
    author = "1248";
    provides = [
      "flatgen"
      "hudbars"
      "stella"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "RedundantC/wis_part1" = mkLuantiGame {
    name = "wis_part1";
    release = 22501;
    hash = "16nf1liaaap1y31z1pjs8y3xqvp5m0kbs1qcl3pqj1mv47xkvn6n";
    author = "RedundantC";
    provides = [
      "controls"
      "formspec_ast"
      "greglib"
      "hud_fs"
      "hud_notify"
      "sounds"
      "wield_events"
      "wis"
      "wis_inject_media"
      "wis_port_mineclonia"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "cx384/dssssa" = mkLuantiGame {
    name = "dssssa";
    release = 15790;
    hash = "00090y9357xmdfl80i732q3q3s27i6kiq09k2ri0qp1v7q8d7icp";
    author = "cx384";
    provides = [
      "dssssa_crafting"
      "dssssa_mapgen"
      "dssssa_player"
      "dssssa_rocks"
      "dssssa_ship"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "mothnox/vpet" = mkLuantiGame {
    name = "vpet";
    release = 15438;
    hash = "0s8iikl9f6ybsgjnrl04vrnx91acdgy32inxg3y9rrk0yq3681s7";
    author = "mothnox";
    provides = [
      "vpet_gfx"
      "vpet_nodes"
      "vpet_pet"
      "vpet_player"
      "vpet_world"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Thunder1035/pacman" = mkLuantiGame {
    name = "pacman";
    release = 13328;
    hash = "1f460vfnpnkbybs7xp3q71v13hv6ac3fn2sdb5qgdwll1andxjc6";
    author = "Thunder1035";
    provides = [
      "awards"
      "basic"
      "commands"
      "creative"
      "default"
      "formspec_ast"
      "ghost"
      "help"
      "hud"
      "hud_fs"
      "hud_map"
      "hudbars"
      "images"
      "items"
      "levels"
      "maze"
      "mesecon_node"
      "mesecons"
      "mesecons_alias"
      "mesecons_materials"
      "mesecons_wires"
      "mobs"
      "player_api"
      "sfinv"
      "skybox"
      "superflat"
      "we_undo"
      "worldedit"
      "worldedit_brush"
      "worldedit_commands"
      "worldedit_gui"
      "worldedit_shortcommands"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "sunnysideup/holidayhorrors" = mkLuantiGame {
    name = "holidayhorrors";
    release = 10179;
    hash = "072g1n3wnyw08iyxgq9c5dcrz5vwwbl4lbn3xzkalrhrn40xxiz5";
    author = "sunnysideup";
    provides = [
      "default"
      "dye"
      "env_sounds"
      "fire"
      "flatgen"
      "game_commands"
      "give_initial_stuff"
      "holiday"
      "map"
      "mobs"
      "player_api"
      "sethome"
      "spawn"
      "vessels"
      "walls"
      "wool"
      "xpanes"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "carlos_rupp/berzerkpt" = mkLuantiGame {
    name = "berzerkpt";
    release = 10305;
    hash = "166g0b03asw50ksypck382giq6ra6zr9g13smy9s9d8s940iirrs";
    author = "carlos_rupp";
    provides = [
      "berzerkpt"
      "default"
      "doors"
      "earthbuild"
      "farming"
      "flowers"
      "give_initial_stuff"
      "mobs"
      "mobs_animal"
      "mobs_npc"
      "player_api"
      "round_trunks"
      "schems"
      "stairs"
      "walls"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "Aurailus/lexa" = mkLuantiGame {
    name = "lexa";
    release = 10216;
    hash = "1x6b1fq0f6rb1h3icb74aiv7kwcmsg59x41wbr1126pghgy6176y";
    author = "Aurailus";
    provides = [
      "lexa_base"
      "lexa_conveyor"
      "lexa_enemy"
      "lexa_factory"
      "lexa_hud"
      "lexa_map"
      "lexa_match"
      "lexa_materials"
      "lexa_nav"
      "lexa_text"
      "lexa_tools"
      "lexa_turret"
      "lexa_wall"
      "power"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "JALdMIC/survivethedays" = mkLuantiGame {
    name = "survivethedays";
    release = 12774;
    hash = "0vz7c3x9wqy8ga7idp5hjbcksfzbpyk29db2b4920gm9bzylal0s";
    author = "JALdMIC";
    provides = [
      "creative"
      "default"
      "env_sounds"
      "game_commands"
      "give_initial_stuff"
      "mobs"
      "monsters"
      "naturalslopeslib"
      "player_api"
      "sethome"
      "sfinv"
      "spawn"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
  "jamiebearcub/grand_theft_box" = mkLuantiGame {
    name = "grand_theft_box";
    release = 10176;
    hash = "09nmb2qppxs08g6wa7ymcsmk2k6mjzj8zhjj8rg9bdqm0a2fq99p";
    author = "jamiebearcub";
    provides = [
      "gtb_assets"
      "gtb_bike"
      "gtb_runtime"
      "player_api"
    ];
    depends = [ ];
    with_same_name = [ ];
  };
}
