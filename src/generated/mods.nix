{ mkMinetestMod }:
{
  "animalia" = mkMinetestMod {
    name = "animalia";
    release = 23715;
    hash = "124sjxlsicgwb32nlps64i10fcr6i1gyn3bjrq75z1vvhadcrlci";
    author = "ElCeejo";
    provides = [ "animalia" ];
    depends = [
      ({
        name = "creatura";
        packages = [
          "ElCeejo/creatura"
          "EmptyStar/asuna"
          "Lone_Wolf/torrlund"
        ];
      })
    ];
  };
  "i3" = mkMinetestMod {
    name = "i3";
    release = 24431;
    hash = "0w533ljd9fhg8mfyn8ack9hfw00vbg0gz42j0hbn37shdvpk6562";
    author = "mt-mods";
    provides = [ "i3" ];
    depends = [ ];
  };
  "draconis" = mkMinetestMod {
    name = "draconis";
    release = 23494;
    hash = "1wnrdq755aqmcnish365h2h1zapp95iqac7b572wliwq05gprng9";
    author = "ElCeejo";
    provides = [ "draconis" ];
    depends = [
      ({
        name = "creatura";
        packages = [
          "ElCeejo/creatura"
          "EmptyStar/asuna"
          "Lone_Wolf/torrlund"
        ];
      })
    ];
  };
  "3d_armor" = mkMinetestMod {
    name = "3d_armor";
    release = 25645;
    hash = "0a6q573wc77dcd5i9529w5ypk2l3kxiskm9fqwjfcqg5ml2qb83g";
    author = "stu";
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
      "shields"
      "wieldview"
    ];
    depends = [
      ({
        name = "player_api";
        packages = [
          "aerkiaga/nodeverse"
          "Hume2/minesweeper_3d"
          "rubenwardy/capturetheflag"
          "StarNinjas/jail_escape"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "BuckarooBanzay/super_sam"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "BRNSystems/blocky_portaling"
          "Casimir/voxelgarden"
          "Panquesito7/panqkart"
          "1248/regnum"
          "bell07/whynot_game"
          "xenonca/luckysweeper"
          "1248/regnum2"
          "mt-mods/driftgame"
          "1248/castrum"
          "Blockhead/sotm"
          "MeseCraft/mesecraft"
          "Hume2/boxworld3d"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "Astrobe/minefall"
          "Lone_Wolf/torrlund"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "dibesfer/colorlandia"
          "xenonca/luckydude"
          "Emojiminetest/parkour"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "jamiebearcub/grand_theft_box"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "worldedit" = mkMinetestMod {
    name = "worldedit";
    release = 25213;
    hash = "1a861qf1rxifgafbbgb2rrn7k0fr1gd5h1f2syg693zhl9429hgy";
    author = "sfan5";
    provides = [
      "worldedit"
      "worldedit_brush"
      "worldedit_commands"
      "worldedit_gui"
      "worldedit_shortcommands"
    ];
    depends = [ ];
  };
  "mesecons" = mkMinetestMod {
    name = "mesecons";
    release = 26935;
    hash = "1ndm6mc0ksvhq3scsli7bv47gj2hirqc94iyxazvl08d7dpr83rh";
    author = "Jeija";
    provides = [
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
    ];
    depends = [
      ({
        name = "doors";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "Panquesito7/panqkart"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "mt-mods/blockcolor"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "TenPlus1/doors"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "everness" = mkMinetestMod {
    name = "everness";
    release = 24216;
    hash = "1rslf24wr1ls2hqqcxi9b06skb055x696pj2a7nz478ygxrmz93i";
    author = "SaKeL";
    provides = [ "everness" ];
    depends = [ ];
  };
  "ethereal" = mkMinetestMod {
    name = "ethereal";
    release = 26663;
    hash = "0b0qps0mbfbm6f36i5sl3x79d9888f8af8mpc67w1c348c8jlc9b";
    author = "TenPlus1";
    provides = [ "ethereal" ];
    depends = [
      ({
        name = "flowers";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "mt-mods/blockcolor"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Astrobe/minefall"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "JavaFXpert/qiskitblocks"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "techage_modpack" = mkMinetestMod {
    name = "techage_modpack";
    release = 21963;
    hash = "1qmfbinkx60y6l0j3cl21lyx1ws52b4rx87kmnn08aj17i33c8cw";
    author = "joe7575";
    provides = [
      "autobahn"
      "basic_materials"
      "compost"
      "doclib"
      "hyperloop"
      "lcdlib"
      "minecart"
      "networks"
      "safer_lua"
      "signs_bot"
      "stamina"
      "ta4_addons"
      "ta4_jetpack"
      "ta4_paraglider"
      "techage"
      "techpack_stairway"
      "towercrane"
      "tubelib2"
      "unified_inventory"
    ];
    depends = [
      ({
        name = "3d_armor";
        packages = [
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "stu/3d_armor"
          "Astrobe/minefall"
          "hilol/epic_combat"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
        ];
      })
      ({
        name = "flowers";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "mt-mods/blockcolor"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Astrobe/minefall"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "JavaFXpert/qiskitblocks"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "doors";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "Panquesito7/panqkart"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "mt-mods/blockcolor"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "TenPlus1/doors"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "stairs";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Minetest/devtest"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "Panquesito7/panqkart"
          "bell07/whynot_game"
          "rheo/moreblocks"
          "mt-mods/blockcolor"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "TenPlus1/stairs"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "screwdriver";
        packages = [
          "rubenwardy/capturetheflag"
          "Kimapr/nonsensical_skyblock"
          "VoxelForge/voxelforge"
          "Casimir/voxelgarden"
          "1248/regnum"
          "1248/regnum2"
          "bell07/whynot_game"
          "1248/castrum"
          "Panquesito7/panqkart"
          "Wuzzy/mineclone2"
          "mt-mods/blockcolor"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "zanderdev/skyblock_zero"
          "EmptyStar/asuna"
          "Wuzzy/hades_revisited"
          "Astrobe/minefall"
          "KareaGhandTrail/block_assault_mapmaker"
          "Lone_Wolf/torrlund"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "ryvnf/mineclonia"
          "hilol/epic_combat"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "bucket";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Minetest/devtest"
          "IcyDiamond/fluid_lib"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "daret/bucket"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "Amaz/lordofthetest"
          "mt-mods/dreambuilder_game"
          "rheo/bucket"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "carts";
        packages = [
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "MeseCraft/mesecraft"
          "1248/regnum2"
          "1248/castrum"
          "mt-mods/blockcolor"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "farming";
        packages = [
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "UnbrokenUnworn/modular_portals"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "TenPlus1/farming"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "unified_inventory" = mkMinetestMod {
    name = "unified_inventory";
    release = 26909;
    hash = "1varrzajihc7fappmy60mf5pnwzpr5lcy9h8ixwqrk4lxi70s79i";
    author = "RealBadAngel";
    provides = [ "unified_inventory" ];
    depends = [ ];
  };
  "automobiles_pck" = mkMinetestMod {
    name = "automobiles_pck";
    release = 26835;
    hash = "15fcmdv68b5da36pgf9zvv38kbq9dsbzmlk181a8am0nag4p9c0d";
    author = "apercy";
    provides = [
      "automobiles_beetle"
      "automobiles_buggy"
      "automobiles_catrelle"
      "automobiles_coupe"
      "automobiles_delorean"
      "automobiles_lib"
      "automobiles_motorcycle"
      "automobiles_roadster"
      "automobiles_trans_am"
      "automobiles_vespa"
    ];
    depends = [
      ({
        name = "player_api";
        packages = [
          "aerkiaga/nodeverse"
          "Hume2/minesweeper_3d"
          "rubenwardy/capturetheflag"
          "StarNinjas/jail_escape"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "BuckarooBanzay/super_sam"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "BRNSystems/blocky_portaling"
          "Casimir/voxelgarden"
          "Panquesito7/panqkart"
          "1248/regnum"
          "bell07/whynot_game"
          "xenonca/luckysweeper"
          "1248/regnum2"
          "mt-mods/driftgame"
          "1248/castrum"
          "Blockhead/sotm"
          "MeseCraft/mesecraft"
          "Hume2/boxworld3d"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "Astrobe/minefall"
          "Lone_Wolf/torrlund"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "dibesfer/colorlandia"
          "xenonca/luckydude"
          "Emojiminetest/parkour"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "jamiebearcub/grand_theft_box"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "mobs_monster" = mkMinetestMod {
    name = "mobs_monster";
    release = 26539;
    hash = "01iccm3q2fygq36bx8r9dk4vlp6wh75w15pzvdvn8zspvnj55dds";
    author = "TenPlus1";
    provides = [ "mobs_monster" ];
    depends = [
      ({
        name = "mobs";
        packages = [
          "StarNinjas/jail_escape"
          "Noodlemire/voxeldungeon"
          "5uper1ach/szombie"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "StarNinjas/veil_of_the_unknown"
          "StarNinjas/ssp"
          "crabycowman123/spmeter"
          "PyuDev/pyutest"
          "mt-mods/blockcolor"
          "TenPlus1/mobs"
          "debiankaios/proxima_survival"
          "miroptics/qiskitblocks_miro"
          "Wuzzy/hades_revisited"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "hilol/epic_combat"
          "JavaFXpert/qiskitblocks"
          "Thunder1035/pacman"
          "PetiAPocok/minetest_extended"
          "1248/agon"
        ];
      })
    ];
  };
  "hangglider" = mkMinetestMod {
    name = "hangglider";
    release = 24882;
    hash = "0mp2mx38gn2h0yis5gdwqqxlanm03wx2zjjwmr3lnlnjff5gvihd";
    author = "mt-mods";
    provides = [ "hangglider" ];
    depends = [
      ({
        name = "dye";
        packages = [
          "rubenwardy/capturetheflag"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "Panquesito7/panqkart"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "hilol/epic_combat"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "giga-turbo/codecube"
          "mt-mods/dreambuilder_game"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "LibraSubtilis/minebase"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "wool";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "miroptics/qiskitblocks_miro"
          "EmptyStar/asuna"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "hilol/epic_combat"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "LibraSubtilis/minebase"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "xdecor" = mkMinetestMod {
    name = "xdecor";
    release = 26153;
    hash = "1l5bg87ipacqmi7kgbv493ibd6dd11qpdgxsn9wvmzy2xj39x8pa";
    author = "Wuzzy";
    provides = [ "xdecor" ];
    depends = [
      ({
        name = "stairs";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Minetest/devtest"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "Panquesito7/panqkart"
          "bell07/whynot_game"
          "rheo/moreblocks"
          "mt-mods/blockcolor"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "TenPlus1/stairs"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "xpanes";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "Wuzzy/mineclone2"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "_Irevol_/citadel"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "bucket";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Minetest/devtest"
          "IcyDiamond/fluid_lib"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "daret/bucket"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "Amaz/lordofthetest"
          "mt-mods/dreambuilder_game"
          "rheo/bucket"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "doors";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "Panquesito7/panqkart"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "mt-mods/blockcolor"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "TenPlus1/doors"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "farming";
        packages = [
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "UnbrokenUnworn/modular_portals"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "TenPlus1/farming"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "wielded_light" = mkMinetestMod {
    name = "wielded_light";
    release = 21949;
    hash = "0ya2i4rzqcd61v9213080an6cblmkqvr0qsh3l89jlkc1bh9s3ap";
    author = "bell07";
    provides = [ "wielded_light" ];
    depends = [ ];
  };
  "mobs" = mkMinetestMod {
    name = "mobs";
    release = 26827;
    hash = "055rq7gzbs5b5ldhwi1qbnsscg5ksi20565l1yc4qg6lhpp6pvdk";
    author = "TenPlus1";
    provides = [ "mobs" ];
    depends = [ ];
  };
  "nether" = mkMinetestMod {
    name = "nether";
    release = 26541;
    hash = "0py0qr0kpxig08cy89s3gkm1mjdk6sn37c3bcd81krg3gqx5jjjd";
    author = "PilzAdam";
    provides = [ "nether" ];
    depends = [
      ({
        name = "stairs";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Minetest/devtest"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "Panquesito7/panqkart"
          "bell07/whynot_game"
          "rheo/moreblocks"
          "mt-mods/blockcolor"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "TenPlus1/stairs"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "edit_skin" = mkMinetestMod {
    name = "edit_skin";
    release = 19234;
    hash = "0lwqnl1p2fmrrdsp4gi1xvvny71zal0w7mcgxzfymwl69wkbslg1";
    author = "Mr. Rar";
    provides = [ "edit_skin" ];
    depends = [
      ({
        name = "player_api";
        packages = [
          "aerkiaga/nodeverse"
          "Hume2/minesweeper_3d"
          "rubenwardy/capturetheflag"
          "StarNinjas/jail_escape"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "BuckarooBanzay/super_sam"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "BRNSystems/blocky_portaling"
          "Casimir/voxelgarden"
          "Panquesito7/panqkart"
          "1248/regnum"
          "bell07/whynot_game"
          "xenonca/luckysweeper"
          "1248/regnum2"
          "mt-mods/driftgame"
          "1248/castrum"
          "Blockhead/sotm"
          "MeseCraft/mesecraft"
          "Hume2/boxworld3d"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "Astrobe/minefall"
          "Lone_Wolf/torrlund"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "dibesfer/colorlandia"
          "xenonca/luckydude"
          "Emojiminetest/parkour"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "jamiebearcub/grand_theft_box"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "farming" = mkMinetestMod {
    name = "farming";
    release = 26969;
    hash = "0c9s8iixkxpc132pv13fi58d949yalns2y23yzcypy57jixk21x4";
    author = "TenPlus1";
    provides = [ "farming" ];
    depends = [ ];
  };
  "pride_flags" = mkMinetestMod {
    name = "pride_flags";
    release = 19070;
    hash = "04gbypyy3q138nb9mp1rsfc07bifwy1ny89jccj7gw07pjqk0xsb";
    author = "Wuzzy";
    provides = [ "pride_flags" ];
    depends = [ ];
  };
  "mobs_animal" = mkMinetestMod {
    name = "mobs_animal";
    release = 26538;
    hash = "0bg5l9flihrslaf3vayjx9d92pry9yyr060nfdiiy9sxizz7wycr";
    author = "TenPlus1";
    provides = [ "mobs_animal" ];
    depends = [
      ({
        name = "mobs";
        packages = [
          "StarNinjas/jail_escape"
          "Noodlemire/voxeldungeon"
          "5uper1ach/szombie"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "StarNinjas/veil_of_the_unknown"
          "StarNinjas/ssp"
          "crabycowman123/spmeter"
          "PyuDev/pyutest"
          "mt-mods/blockcolor"
          "TenPlus1/mobs"
          "debiankaios/proxima_survival"
          "miroptics/qiskitblocks_miro"
          "Wuzzy/hades_revisited"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "hilol/epic_combat"
          "JavaFXpert/qiskitblocks"
          "Thunder1035/pacman"
          "PetiAPocok/minetest_extended"
          "1248/agon"
        ];
      })
    ];
  };
  "pipeworks" = mkMinetestMod {
    name = "pipeworks";
    release = 26883;
    hash = "1n95q9z0ygh98vba2cza0jznxbzhr31h1l2h525g3xc6w4hyb0nw";
    author = "mt-mods";
    provides = [ "pipeworks" ];
    depends = [
      ({
        name = "fakelib";
        packages = [
          "zanderdev/skyblock_zero"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
          "OgelGames/fakelib"
        ];
      })
      ({
        name = "basic_materials";
        packages = [
          "mt-mods/basic_materials"
          "Kimapr/nonsensical_skyblock"
          "joe7575/techage_modpack"
          "bell07/whynot_game"
          "MeseCraft/mesecraft"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
          "rlars/occupymoon_game"
        ];
      })
      ({
        name = "xcompat";
        packages = [
          "mt-mods/xcompat"
          "BuckarooBanzay/super_sam"
          "Kimapr/nonsensical_skyblock"
          "bell07/whynot_game"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
        ];
      })
    ];
  };
  "advtrains" = mkMinetestMod {
    name = "advtrains";
    release = 26318;
    hash = "14x9axg72yjlfnxhhda8ivyy7pvi3d49sds3apslr5s12pyxrxl1";
    author = "orwell";
    provides = [
      "advtrains"
      "advtrains_interlocking"
      "advtrains_line_automation"
      "advtrains_luaautomation"
      "advtrains_signals_ks"
      "advtrains_train_track"
      "serialize_lib"
    ];
    depends = [ ];
  };
  "animalworld" = mkMinetestMod {
    name = "animalworld";
    release = 24027;
    hash = "1m40rar4jxh9gh7vvlwnb5v5vpj9pm6w4dfwfgzgnqx21l3drip2";
    author = "Liil";
    provides = [ "animalworld" ];
    depends = [
      ({
        name = "mobs";
        packages = [
          "StarNinjas/jail_escape"
          "Noodlemire/voxeldungeon"
          "5uper1ach/szombie"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "StarNinjas/veil_of_the_unknown"
          "StarNinjas/ssp"
          "crabycowman123/spmeter"
          "PyuDev/pyutest"
          "mt-mods/blockcolor"
          "TenPlus1/mobs"
          "debiankaios/proxima_survival"
          "miroptics/qiskitblocks_miro"
          "Wuzzy/hades_revisited"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "hilol/epic_combat"
          "JavaFXpert/qiskitblocks"
          "Thunder1035/pacman"
          "PetiAPocok/minetest_extended"
          "1248/agon"
        ];
      })
    ];
  };
  "hidroplane" = mkMinetestMod {
    name = "hidroplane";
    release = 26772;
    hash = "0sbcb7h0nk7fs919d598zkfn6jnn9brg8b49w0wdzxrm5781s233";
    author = "apercy";
    provides = [ "hidroplane" ];
    depends = [
      ({
        name = "airutils";
        packages = [
          "bell07/whynot_game"
          "apercy/airutils"
        ];
      })
      ({
        name = "supercub";
        packages = [
          "bell07/whynot_game"
          "apercy/supercub"
        ];
      })
    ];
  };
  "schemedit" = mkMinetestMod {
    name = "schemedit";
    release = 22550;
    hash = "14fmqkjzrv7c5vqds3d8fy1jy3ir081a18j01kvg2nscwvvh6p4q";
    author = "Wuzzy";
    provides = [ "schemedit" ];
    depends = [ ];
  };
  "rangedweapons" = mkMinetestMod {
    name = "rangedweapons";
    release = 25331;
    hash = "0sv2zg8cd9mwy9jiy0d9ja9lrcpw796a15kiz2x39fpicyxaygjc";
    author = "Lars";
    provides = [ "rangedweapons" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "tnt";
        packages = [
          "rubenwardy/capturetheflag"
          "StarNinjas/jail_escape"
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "AwesomeDragon97/tnt"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "steampunk_blimp" = mkMinetestMod {
    name = "steampunk_blimp";
    release = 25392;
    hash = "0xn5rvbbfn82kyxx494lnb6w7n6ivwcw4kh4r4j3b0yvkc7bfs68";
    author = "apercy";
    provides = [ "steampunk_blimp" ];
    depends = [
      ({
        name = "airutils";
        packages = [
          "bell07/whynot_game"
          "apercy/airutils"
        ];
      })
    ];
  };
  "mg_villages" = mkMinetestMod {
    name = "mg_villages";
    release = 20488;
    hash = "0pk2hxpmrfi61176x7y8bkrjr7xq3qsxm1qchn60vnk7i2knhv4j";
    author = "Sokomine";
    provides = [ "mg_villages" ];
    depends = [
      ({
        name = "handle_schematics";
        packages = [ "Sokomine/handle_schematics" ];
      })
    ];
  };
  "digtron" = mkMinetestMod {
    name = "digtron";
    release = 23645;
    hash = "0dyc43r2v4a3pa9hm82f7i3kj7gns2lmfv0mrrh4q4ba27j41yy3";
    author = "FaceDeer";
    provides = [ "digtron" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "stamina" = mkMinetestMod {
    name = "stamina";
    release = 25394;
    hash = "0754bd76jjsdb5z6s00m7rkxjdnk8gy6805gk5vybnzr1jclyp3g";
    author = "sofar";
    provides = [ "stamina" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "moreblocks" = mkMinetestMod {
    name = "moreblocks";
    release = 13045;
    hash = "0sx0s7scxas86g09qpa0dzprn656c4ys0qn4hr9r56h3ajvlz1v1";
    author = "Calinou";
    provides = [ "moreblocks" ];
    depends = [ ];
  };
  "bonemeal" = mkMinetestMod {
    name = "bonemeal";
    release = 26120;
    hash = "0dk97imh3qngnvr711cakryimvbsma3x44yb79666piirwsvawgm";
    author = "TenPlus1";
    provides = [ "bonemeal" ];
    depends = [ ];
  };
  "skinsdb" = mkMinetestMod {
    name = "skinsdb";
    release = 22817;
    hash = "1mh1fvi38mgx567zq2az1pl9mzfxzi11n8i0zl2lbq1gb0ldp4sh";
    author = "bell07";
    provides = [ "skinsdb" ];
    depends = [
      ({
        name = "player_api";
        packages = [
          "aerkiaga/nodeverse"
          "Hume2/minesweeper_3d"
          "rubenwardy/capturetheflag"
          "StarNinjas/jail_escape"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "BuckarooBanzay/super_sam"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "BRNSystems/blocky_portaling"
          "Casimir/voxelgarden"
          "Panquesito7/panqkart"
          "1248/regnum"
          "bell07/whynot_game"
          "xenonca/luckysweeper"
          "1248/regnum2"
          "mt-mods/driftgame"
          "1248/castrum"
          "Blockhead/sotm"
          "MeseCraft/mesecraft"
          "Hume2/boxworld3d"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "Astrobe/minefall"
          "Lone_Wolf/torrlund"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "dibesfer/colorlandia"
          "xenonca/luckydude"
          "Emojiminetest/parkour"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "jamiebearcub/grand_theft_box"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "edit" = mkMinetestMod {
    name = "edit";
    release = 26144;
    hash = "0h0w9m132dgpc3cw3n8xg85xn781ldkccnsq7apd3c6kjv9vfgn4";
    author = "Mr. Rar";
    provides = [ "edit" ];
    depends = [ ];
  };
  "moretrees" = mkMinetestMod {
    name = "moretrees";
    release = 25631;
    hash = "01s0pmxkkmwnmh45sdj9g15lcdfp6ikps7yy7pal0l5ivn020mfv";
    author = "mt-mods";
    provides = [ "moretrees" ];
    depends = [
      ({
        name = "xcompat";
        packages = [
          "mt-mods/xcompat"
          "BuckarooBanzay/super_sam"
          "Kimapr/nonsensical_skyblock"
          "bell07/whynot_game"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
        ];
      })
    ];
  };
  "moreores" = mkMinetestMod {
    name = "moreores";
    release = 24558;
    hash = "0wgmy97g3kywwppba09px8fmlwia68mzq19r2q4bffz2q58bcxrz";
    author = "Calinou";
    provides = [ "moreores" ];
    depends = [ ];
  };
  "ebiomes" = mkMinetestMod {
    name = "ebiomes";
    release = 26283;
    hash = "1f55g626lksbg61mzcsq9a010gwwn7hmlkf989k0zk8aar0dhvq3";
    author = "CowboyLv";
    provides = [ "ebiomes" ];
    depends = [
      ({
        name = "dye";
        packages = [
          "rubenwardy/capturetheflag"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "Panquesito7/panqkart"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "hilol/epic_combat"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "giga-turbo/codecube"
          "mt-mods/dreambuilder_game"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "LibraSubtilis/minebase"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "stairs";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Minetest/devtest"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "Panquesito7/panqkart"
          "bell07/whynot_game"
          "rheo/moreblocks"
          "mt-mods/blockcolor"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "TenPlus1/stairs"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "leads" = mkMinetestMod {
    name = "leads";
    release = 23044;
    hash = "1hscg4r0m40c896x031dzd8kjkcxx5lv5h00sqddgkx25v85qhvn";
    author = "SilverSandstone";
    provides = [ "leads" ];
    depends = [ ];
  };
  "motorboat" = mkMinetestMod {
    name = "motorboat";
    release = 26742;
    hash = "19nq9xhin369kh5ig1p275zk4g2ycfia3ql62wkyh6y3vkws5s3v";
    author = "apercy";
    provides = [ "motorboat" ];
    depends = [
      ({
        name = "biofuel";
        packages = [
          "bell07/whynot_game"
          "Lokrates/biofuel"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "mobkit";
        packages = [
          "benrob0329/ikea"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "talas/colourhop"
          "wsor4035/minekart"
          "Lone_Wolf/voxel_knights"
          "Mantar/exile"
          "mt-mods/mobkit"
          "wsor4035/farlands_reloaded"
        ];
      })
    ];
  };
  "legboat" = mkMinetestMod {
    name = "legboat";
    release = 16865;
    hash = "0i31s25f1yd6wv7ssi9srpgs57lam1kw1vzv32g2scy7774w266g";
    author = "ekl";
    provides = [ "legboat" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "boats";
        packages = [
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "Amaz/lordofthetest"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "LibraSubtilis/minebase"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "drawers" = mkMinetestMod {
    name = "drawers";
    release = 16765;
    hash = "0s05wqnxpaa41azdsd4xxrv5sc2khd8lj6s9n352fpx21yqnx8vi";
    author = "LNJ";
    provides = [ "drawers" ];
    depends = [ ];
  };
  "technic" = mkMinetestMod {
    name = "technic";
    release = 26548;
    hash = "1l555s6y81b6nakrmqkisrcnh118hrlniyfcxdx9in3azc660lph";
    author = "RealBadAngel";
    provides = [
      "concrete"
      "extranodes"
      "technic"
      "technic_chests"
      "technic_cnc"
      "technic_worldgen"
      "wrench"
    ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "pipeworks";
        packages = [
          "Kimapr/nonsensical_skyblock"
          "1248/regnum"
          "1248/regnum2"
          "zanderdev/skyblock_zero"
          "Wuzzy/hades_revisited"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
          "mt-mods/pipeworks"
          "rlars/occupymoon_game"
        ];
      })
      ({
        name = "basic_materials";
        packages = [
          "mt-mods/basic_materials"
          "Kimapr/nonsensical_skyblock"
          "joe7575/techage_modpack"
          "bell07/whynot_game"
          "MeseCraft/mesecraft"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
          "rlars/occupymoon_game"
        ];
      })
    ];
  };
  "character_anim" = mkMinetestMod {
    name = "character_anim";
    release = 21825;
    hash = "1m3nnclsng2lk6r0l234v0iznfpgfay61wi55fg30c26szwamkmq";
    author = "LMD";
    provides = [ "character_anim" ];
    depends = [
      ({
        name = "modlib";
        packages = [
          "Kimapr/nonsensical_skyblock"
          "LMD/modlib"
          "LMD/cellestial_game"
          "sdd/spiraling_down"
        ];
      })
    ];
  };
  "headanim" = mkMinetestMod {
    name = "headanim";
    release = 8888;
    hash = "1ihg4rsbillg1wkq5a2gqy9pvipkrrmz1knbmjcaf4c5y5shncc9";
    author = "Lone_Wolf";
    provides = [ "headanim" ];
    depends = [ ];
  };
  "creatura" = mkMinetestMod {
    name = "creatura";
    release = 22754;
    hash = "0vk7j69r22bca49cy35lpyalwvrwl6pjsnin0javvb67774b8nmp";
    author = "ElCeejo";
    provides = [ "creatura" ];
    depends = [ ];
  };
  "plantlife_modpack" = mkMinetestMod {
    name = "plantlife_modpack";
    release = 25500;
    hash = "0jgclazfplk9pxcpyh1i5zy0562bcarygg9ycr9kdiillx41qvv8";
    author = "mt-mods";
    provides = [
      "3dmushrooms"
      "bushes"
      "bushes_classic"
      "cavestuff"
      "dryplants"
      "ferns"
      "molehills"
      "nature_classic"
      "pl_seaweed"
      "pl_sunflowers"
      "pl_waterlilies"
      "poisonivy"
      "trunks"
      "vines"
      "woodsoils"
      "youngtrees"
    ];
    depends = [
      ({
        name = "flowers";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "mt-mods/blockcolor"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Astrobe/minefall"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "JavaFXpert/qiskitblocks"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "biome_lib";
        packages = [
          "Noodlemire/voxeldungeon"
          "mt-mods/dreambuilder_game"
          "mt-mods/biome_lib"
        ];
      })
    ];
  };
  "supercub" = mkMinetestMod {
    name = "supercub";
    release = 23465;
    hash = "1d9jrl2qjpmvb5qqzviwywb7mvvsrbxzh02rw68348y7yn50dljm";
    author = "apercy";
    provides = [ "supercub" ];
    depends = [
      ({
        name = "airutils";
        packages = [
          "bell07/whynot_game"
          "apercy/airutils"
        ];
      })
    ];
  };
  "hudbars" = mkMinetestMod {
    name = "hudbars";
    release = 19930;
    hash = "16lrcmvdghsy89kzb4262lnzlscc4c0afskys1z8qswygis9hcrv";
    author = "Wuzzy";
    provides = [ "hudbars" ];
    depends = [ ];
  };
  "bike" = mkMinetestMod {
    name = "bike";
    release = 17361;
    hash = "0hy01gm09cljgggi2x5lmafk6cb4pn7chj8i2f2bw7sdlzpds2xa";
    author = "Hume2";
    provides = [ "bike" ];
    depends = [ ];
  };
  "dfcaverns" = mkMinetestMod {
    name = "dfcaverns";
    release = 22198;
    hash = "119m26nrcrw1zyw3r7caaqjyh2b2ms8ipimbwfz2rmdypr1ilvs9";
    author = "FaceDeer";
    provides = [
      "big_webs"
      "bones_loot"
      "chasms"
      "df_achievements"
      "df_ambience"
      "df_caverns"
      "df_dependencies"
      "df_farming"
      "df_mapitems"
      "df_primordial_items"
      "df_trees"
      "df_underworld_items"
      "hunter_statue"
      "ice_sprites"
      "looped_node_sound"
      "mapgen_helper"
      "mine_gas"
      "oil"
      "pit_caves"
      "subterrane"
    ];
    depends = [ ];
  };
  "protector" = mkMinetestMod {
    name = "protector";
    release = 24868;
    hash = "1p51z0xa8zqrb1yqysdkjwirib6misjnxcdmawzd4n4x3w4j8dgw";
    author = "TenPlus1";
    provides = [ "protector" ];
    depends = [ ];
  };
  "anvil" = mkMinetestMod {
    name = "anvil";
    release = 26547;
    hash = "1cd8fnb44jvlf85cr8rxf3j8204787wi045n9n6r8xhb95115mqa";
    author = "FaceDeer";
    provides = [ "anvil" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "meshport" = mkMinetestMod {
    name = "meshport";
    release = 25287;
    hash = "06q636pvxcig65sdrx0rcilan9qqas6ilvjj3z6xz91hzs2a5150";
    author = "random_geek";
    provides = [ "meshport" ];
    depends = [ ];
  };
  "digilines" = mkMinetestMod {
    name = "digilines";
    release = 26976;
    hash = "0cn3fpbar2d6f35kx65ghx99b3fhwznwp85ay0f40fhq3kdlmn6w";
    author = "Jeija";
    provides = [ "digilines" ];
    depends = [ ];
  };
  "arena_lib" = mkMinetestMod {
    name = "arena_lib";
    release = 25506;
    hash = "139pkkprcmnp4swbnggq0d5i9wwvgz0drv7wa6np4gg6knss3bci";
    author = "Zughy";
    provides = [ "arena_lib" ];
    depends = [
      ({
        name = "signs_lib";
        packages = [
          "Kimapr/nonsensical_skyblock"
          "debiankaios/proxima_survival"
          "mt-mods/blockcolor"
          "EmptyStar/asuna"
          "Wuzzy/hades_revisited"
          "mt-mods/signs_lib"
          "mt-mods/dreambuilder_game"
        ];
      })
      ({
        name = "audio_lib";
        packages = [ "Zughy/audio_lib" ];
      })
    ];
  };
  "logistica" = mkMinetestMod {
    name = "logistica";
    release = 26875;
    hash = "0vw3zgaf3hanazaf6ph06rll83n49n6w5brrlkcygfphd3yad75y";
    author = "ZenonSeth";
    provides = [ "logistica" ];
    depends = [ ];
  };
  "enderpearl" = mkMinetestMod {
    name = "enderpearl";
    release = 26492;
    hash = "1aw0hdcdj1vdnrv394izycfa9ylljca4sgbxx4q6a6pd2yna3d21";
    author = "giov4";
    provides = [ "enderpearl" ];
    depends = [ ];
  };
  "mobs_npc" = mkMinetestMod {
    name = "mobs_npc";
    release = 26540;
    hash = "18bw2mglf3bpb77f4a61kfvy1cwfr7r8bkfbmr6z0rcnf0vqs3n9";
    author = "TenPlus1";
    provides = [ "mobs_npc" ];
    depends = [
      ({
        name = "mobs";
        packages = [
          "StarNinjas/jail_escape"
          "Noodlemire/voxeldungeon"
          "5uper1ach/szombie"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "StarNinjas/veil_of_the_unknown"
          "StarNinjas/ssp"
          "crabycowman123/spmeter"
          "PyuDev/pyutest"
          "mt-mods/blockcolor"
          "TenPlus1/mobs"
          "debiankaios/proxima_survival"
          "miroptics/qiskitblocks_miro"
          "Wuzzy/hades_revisited"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "hilol/epic_combat"
          "JavaFXpert/qiskitblocks"
          "Thunder1035/pacman"
          "PetiAPocok/minetest_extended"
          "1248/agon"
        ];
      })
    ];
  };
  "skygen" = mkMinetestMod {
    name = "skygen";
    release = 24929;
    hash = "1fzii6gz8r0p1zl5vm7sxd2cc348hjl809i47hlniw5d4i6k0h0g";
    author = "the_raven_262";
    provides = [ "skygen" ];
    depends = [ ];
  };
  "waffles" = mkMinetestMod {
    name = "waffles";
    release = 16795;
    hash = "0xsw044vqpdva4bmkqgvv0dn8azgwx1233fwns1rpy6z8l24saya";
    author = "GreenXenith";
    provides = [ "waffles" ];
    depends = [ ];
  };
  "unifieddyes" = mkMinetestMod {
    name = "unifieddyes";
    release = 24760;
    hash = "07ld455amc2sbagrg8z8cg555mrwnly2mkm08ic5pix208qwyc17";
    author = "mt-mods";
    provides = [ "unifieddyes" ];
    depends = [ ];
  };
  "i_have_hands" = mkMinetestMod {
    name = "i_have_hands";
    release = 25691;
    hash = "1gchjrrcvxc3ir5znmxxz9i8l7qh06ni5qvi3q649xbkrxsppidn";
    author = "SURV";
    provides = [ "i_have_hands" ];
    depends = [ ];
  };
  "nextgen_fungi" = mkMinetestMod {
    name = "nextgen_fungi";
    release = 20073;
    hash = "15zp7bmcaw6m1dqqhnd32338r6g9x161gx2kc554wyarg6h6ls22";
    author = "StarNinjas";
    provides = [ "nextgen_fungi" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "flowers";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "mt-mods/blockcolor"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Astrobe/minefall"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "JavaFXpert/qiskitblocks"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "laptop" = mkMinetestMod {
    name = "laptop";
    release = 12776;
    hash = "1kj76nfi9j9nscd7dyk7j1lsjli1xw331hmk3s174527wqyr9485";
    author = "GamingAssociation39";
    provides = [ "laptop" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "pathv7" = mkMinetestMod {
    name = "pathv7";
    release = 8135;
    hash = "1zff8rj4m5d8s42qgijmb9hljkg7l8k5p2l0x8jnphl7h0fzdvb5";
    author = "Emojiminetest";
    provides = [ "pathv7" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "stairs";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Minetest/devtest"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "Panquesito7/panqkart"
          "bell07/whynot_game"
          "rheo/moreblocks"
          "mt-mods/blockcolor"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "TenPlus1/stairs"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "digistuff" = mkMinetestMod {
    name = "digistuff";
    release = 25804;
    hash = "10z1h8gsxq13pd3jp0sg5cvs6p04l87ychvk3bflqbnflda3sjfg";
    author = "mt-mods";
    provides = [ "digistuff" ];
    depends = [
      ({
        name = "digilines";
        packages = [
          "Kimapr/nonsensical_skyblock"
          "BRNSystems/blocky_portaling"
          "MeseCraft/mesecraft"
          "Jeija/digilines"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
        ];
      })
    ];
  };
  "lwscratch" = mkMinetestMod {
    name = "lwscratch";
    release = 11533;
    hash = "0pk5z22n252dfnwjryzxw6ldhwbzf9di8clhxsv5rgapjpw7pgvq";
    author = "loosewheel";
    provides = [ "lwscratch" ];
    depends = [ ];
  };
  "too_many_stones" = mkMinetestMod {
    name = "too_many_stones";
    release = 23359;
    hash = "0qa1sc0fxqcsh1si3v4hrkmpzsb9n69anjhd5hp0xsyg5cklsjmx";
    author = "JoeEnderman";
    provides = [ "too_many_stones" ];
    depends = [ ];
  };
  "item_physics" = mkMinetestMod {
    name = "item_physics";
    release = 26261;
    hash = "0mfwmysw7im2j883rj2q2f96yjkhz24c6qb4wm9g1s77ncii4mg9";
    author = "Sumianvoice";
    provides = [ "item_physics" ];
    depends = [ ];
  };
  "stairs" = mkMinetestMod {
    name = "stairs";
    release = 26295;
    hash = "1a0fphq35mg5857hcgrqmahpqnl8r8w3nyhmfglg8l8vzmzx4h9d";
    author = "TenPlus1";
    provides = [ "stairs" ];
    depends = [ ];
  };
  "cottages" = mkMinetestMod {
    name = "cottages";
    release = 22105;
    hash = "1gmijgj5c8d1i09ddbvqplb1r50cac1g3gaxgwd6apybil8zlj59";
    author = "Sokomine";
    provides = [ "cottages" ];
    depends = [ ];
  };
  "murder" = mkMinetestMod {
    name = "murder";
    release = 7068;
    hash = "1iavdzfhzqd01ns4mrm11xsv7qdhanbwwfcjmk2w3vf1fby961mf";
    author = "giov4";
    provides = [ "murder" ];
    depends = [
      ({
        name = "arena_lib";
        packages = [ "Zughy/arena_lib" ];
      })
    ];
  };
  "tnt_revamped" = mkMinetestMod {
    name = "tnt_revamped";
    release = 9685;
    hash = "09mk8lpwc4a9ah0601c7am4rp7pqgx53jggijn5mprgfg6crwcn3";
    author = "Coder12";
    provides = [ "tnt_revamped" ];
    depends = [ ];
  };
  "jelys_pizzaria" = mkMinetestMod {
    name = "jelys_pizzaria";
    release = 25683;
    hash = "0228gfjlwxdybhg9rk9flbf7m58kgah4y3xp8xn7h1b4mf203ly6";
    author = "Extex";
    provides = [ "jelys_pizzaria" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "vessels";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "bell07/whynot_game"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Amaz/lordofthetest"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "flowers";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "mt-mods/blockcolor"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Astrobe/minefall"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "JavaFXpert/qiskitblocks"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "farming";
        packages = [
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "UnbrokenUnworn/modular_portals"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "TenPlus1/farming"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "elevator" = mkMinetestMod {
    name = "elevator";
    release = 23816;
    hash = "1y5qx16chckf4ifg2akjj74wxd7wpkb8z5k2x0g72iflilm3yv9q";
    author = "shacknetisp";
    provides = [ "elevator" ];
    depends = [ ];
  };
  "nssm" = mkMinetestMod {
    name = "nssm";
    release = 26757;
    hash = "1iigxpgfdvfwmkxqi2mmpf8pp8yk6d0fnaxf9dg53xkpx09a8yp9";
    author = "TenPlus1";
    provides = [ "nssm" ];
    depends = [
      ({
        name = "fire";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Noodlemire/voxeldungeon"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "StarNinjas/veil_of_the_unknown"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "Astrobe/minefall"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "tnt";
        packages = [
          "rubenwardy/capturetheflag"
          "StarNinjas/jail_escape"
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "AwesomeDragon97/tnt"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "mobs";
        packages = [
          "StarNinjas/jail_escape"
          "Noodlemire/voxeldungeon"
          "5uper1ach/szombie"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "StarNinjas/veil_of_the_unknown"
          "StarNinjas/ssp"
          "crabycowman123/spmeter"
          "PyuDev/pyutest"
          "mt-mods/blockcolor"
          "TenPlus1/mobs"
          "debiankaios/proxima_survival"
          "miroptics/qiskitblocks_miro"
          "Wuzzy/hades_revisited"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "hilol/epic_combat"
          "JavaFXpert/qiskitblocks"
          "Thunder1035/pacman"
          "PetiAPocok/minetest_extended"
          "1248/agon"
        ];
      })
    ];
  };
  "islands" = mkMinetestMod {
    name = "islands";
    release = 7005;
    hash = "1f4lwmmbfqj5x5icz3qk3g4sr7d1zqfg8jrm6zlcl2am7sdaj0a8";
    author = "Termos";
    provides = [ "islands" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "crewmate" = mkMinetestMod {
    name = "crewmate";
    release = 22587;
    hash = "13drlp03nmwj3v2lx8b1nzr8020zv0dcpn7crr0154nv0ygdxynk";
    author = "aSliceOfCake";
    provides = [ "crewmate" ];
    depends = [ ];
  };
  "mobkit" = mkMinetestMod {
    name = "mobkit";
    release = 26035;
    hash = "0xwwbsq3vqci27z7sb8bv2izi7ya26l6lc3ypnd08qjfsxy54hsj";
    author = "mt-mods";
    provides = [ "mobkit" ];
    depends = [ ];
  };
  "caverealms" = mkMinetestMod {
    name = "caverealms";
    release = 30;
    hash = "11zfwccp06n9fiydc0x706ksp6mb03drqkjlip43q8ik31iy1ckj";
    author = "Shara";
    provides = [ "caverealms" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "stairs";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Minetest/devtest"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "Panquesito7/panqkart"
          "bell07/whynot_game"
          "rheo/moreblocks"
          "mt-mods/blockcolor"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "TenPlus1/stairs"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "weather" = mkMinetestMod {
    name = "weather";
    release = 5343;
    hash = "1irkgp7fi6lh6dm8h4vmjkx1s642293s5q0glhg98ldiia5zrwhn";
    author = "theFox";
    provides = [ "weather" ];
    depends = [ ];
  };
  "placement_preview" = mkMinetestMod {
    name = "placement_preview";
    release = 24621;
    hash = "1fv14v0dkk6albhhs00afh1wsc22jljw4wxdckvvkx952nagn0h5";
    author = "SURV";
    provides = [ "placement_preview" ];
    depends = [ ];
  };
  "randomizer" = mkMinetestMod {
    name = "randomizer";
    release = 9077;
    hash = "0pikjpyfslabfpa5s5g5nqaacdmgzi9sa86phvwpkrzvszli9zm6";
    author = "NO11";
    provides = [ "randomizer" ];
    depends = [ ];
  };
  "wesh" = mkMinetestMod {
    name = "wesh";
    release = 910;
    hash = "0zj2hmw3hw153waxxcmr15c4di3nlr45s512abcbwzw9qvj14djm";
    author = "entuland";
    provides = [ "wesh" ];
    depends = [
      ({
        name = "matrix";
        packages = [
          "entuland/matrix"
          "Lone_Wolf/voxel_knights"
        ];
      })
    ];
  };
  "3d_armor_flyswim" = mkMinetestMod {
    name = "3d_armor_flyswim";
    release = 13392;
    hash = "12h9w9v3208sbakn4h50l6vsag811ymizah4xq33haadwc5gvq1s";
    author = "sirrobzeroone";
    provides = [ "3d_armor_flyswim" ];
    depends = [
      ({
        name = "player_api";
        packages = [
          "aerkiaga/nodeverse"
          "Hume2/minesweeper_3d"
          "rubenwardy/capturetheflag"
          "StarNinjas/jail_escape"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "BuckarooBanzay/super_sam"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "BRNSystems/blocky_portaling"
          "Casimir/voxelgarden"
          "Panquesito7/panqkart"
          "1248/regnum"
          "bell07/whynot_game"
          "xenonca/luckysweeper"
          "1248/regnum2"
          "mt-mods/driftgame"
          "1248/castrum"
          "Blockhead/sotm"
          "MeseCraft/mesecraft"
          "Hume2/boxworld3d"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "Astrobe/minefall"
          "Lone_Wolf/torrlund"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "dibesfer/colorlandia"
          "xenonca/luckydude"
          "Emojiminetest/parkour"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "jamiebearcub/grand_theft_box"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "x_bows" = mkMinetestMod {
    name = "x_bows";
    release = 23772;
    hash = "0r8y2drr25zcjr3vkjbh8h3ywgs632lnrgkx5kijyz0lh3k2zwl6";
    author = "SaKeL";
    provides = [ "x_bows" ];
    depends = [ ];
  };
  "x_enchanting" = mkMinetestMod {
    name = "x_enchanting";
    release = 23228;
    hash = "13d81z37jhqjmdp6k5yi9c3whsx5mwfrgy3ckf183jcv06gx02cz";
    author = "SaKeL";
    provides = [ "x_enchanting" ];
    depends = [ ];
  };
  "holosurveilance" = mkMinetestMod {
    name = "holosurveilance";
    release = 19006;
    hash = "1hwvjni11xjph8k96xk3m2wpwbvnb04xj5bviwsf4ycxp4dczz7v";
    author = "thvk";
    provides = [ "holosurveilance" ];
    depends = [ ];
  };
  "xcompat" = mkMinetestMod {
    name = "xcompat";
    release = 26749;
    hash = "0052vbf3prhqvajld6xcl6qs3rkzrlqk5p87g0xy1df8g23jqaq5";
    author = "mt-mods";
    provides = [ "xcompat" ];
    depends = [ ];
  };
  "bucket_wooden" = mkMinetestMod {
    name = "bucket_wooden";
    release = 18487;
    hash = "182nfq9zmmlhzl3ma4f9vcx6hdv6a65g0bj0z6ib0zvdl0dgdj5s";
    author = "Hume2";
    provides = [ "bucket_wooden" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "signs_lib" = mkMinetestMod {
    name = "signs_lib";
    release = 25376;
    hash = "15d84j7q73bl642kcxjzvl52g8l72xw2gdf8dw9yv360fg671ils";
    author = "mt-mods";
    provides = [ "signs_lib" ];
    depends = [ ];
  };
  "nss_helicopter" = mkMinetestMod {
    name = "nss_helicopter";
    release = 25797;
    hash = "0vrfs67d5s6mjgb19jy2grmza8yp8gbj8w2d3wpnj8pim5ra26nf";
    author = "apercy";
    provides = [ "nss_helicopter" ];
    depends = [
      ({
        name = "biofuel";
        packages = [
          "bell07/whynot_game"
          "Lokrates/biofuel"
        ];
      })
      ({
        name = "player_api";
        packages = [
          "aerkiaga/nodeverse"
          "Hume2/minesweeper_3d"
          "rubenwardy/capturetheflag"
          "StarNinjas/jail_escape"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "BuckarooBanzay/super_sam"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "BRNSystems/blocky_portaling"
          "Casimir/voxelgarden"
          "Panquesito7/panqkart"
          "1248/regnum"
          "bell07/whynot_game"
          "xenonca/luckysweeper"
          "1248/regnum2"
          "mt-mods/driftgame"
          "1248/castrum"
          "Blockhead/sotm"
          "MeseCraft/mesecraft"
          "Hume2/boxworld3d"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "Astrobe/minefall"
          "Lone_Wolf/torrlund"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "dibesfer/colorlandia"
          "xenonca/luckydude"
          "Emojiminetest/parkour"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "jamiebearcub/grand_theft_box"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "nextgen_bows" = mkMinetestMod {
    name = "nextgen_bows";
    release = 26885;
    hash = "1m95q3fgy5n6a5cdmf47siaii8z6rc58x2wdad5rvy3kzx96w5zr";
    author = "StarNinjas";
    provides = [ "nextgen_bows" ];
    depends = [ ];
  };
  "zoonami" = mkMinetestMod {
    name = "zoonami";
    release = 24875;
    hash = "1gkqn2kawz38a97bgvyvpclvccrpb9j3q1ka188h6kigx0vqqd6v";
    author = "isaiah658";
    provides = [ "zoonami" ];
    depends = [
      ({
        name = "fsc";
        packages = [ "sofar/fsc" ];
      })
    ];
  };
  "livingnether" = mkMinetestMod {
    name = "livingnether";
    release = 26157;
    hash = "1pj1sxnjwbmprdg4ailk4ynxdhb4vqn597pck2wmk2c5ap3h52mc";
    author = "Liil";
    provides = [ "livingnether" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "mobs";
        packages = [
          "StarNinjas/jail_escape"
          "Noodlemire/voxeldungeon"
          "5uper1ach/szombie"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "StarNinjas/veil_of_the_unknown"
          "StarNinjas/ssp"
          "crabycowman123/spmeter"
          "PyuDev/pyutest"
          "mt-mods/blockcolor"
          "TenPlus1/mobs"
          "debiankaios/proxima_survival"
          "miroptics/qiskitblocks_miro"
          "Wuzzy/hades_revisited"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "hilol/epic_combat"
          "JavaFXpert/qiskitblocks"
          "Thunder1035/pacman"
          "PetiAPocok/minetest_extended"
          "1248/agon"
        ];
      })
      ({
        name = "nether";
        packages = [
          "Casimir/voxelgarden"
          "MeseCraft/mesecraft"
          "Hybrid Dog/nether"
          "PilzAdam/nether"
          "hilol/epic_combat"
          "PetiAPocok/minetest_extended"
        ];
      })
    ];
  };
  "sandwiches" = mkMinetestMod {
    name = "sandwiches";
    release = 17426;
    hash = "0gwmd6aj4qxcldb7flf6rcbkffr9z56nz82pyc36iz15aspl98zv";
    author = "Annalysa";
    provides = [ "sandwiches" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "farming";
        packages = [
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "UnbrokenUnworn/modular_portals"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "TenPlus1/farming"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "mapgen_rivers" = mkMinetestMod {
    name = "mapgen_rivers";
    release = 19964;
    hash = "08wnb008wp40gzpazriyjy8w0wfwap6ph6mb360d0hkx1ghhmxsm";
    author = "Gael de Sailly";
    provides = [ "mapgen_rivers" ];
    depends = [ ];
  };
  "dreambuilder_hotbar" = mkMinetestMod {
    name = "dreambuilder_hotbar";
    release = 19956;
    hash = "0w606yw6s80ifapwq92yrh0sy1dp81bs8xr74iaqm3rn64ngb5qa";
    author = "mt-mods";
    provides = [ "dreambuilder_hotbar" ];
    depends = [ ];
  };
  "findbiome" = mkMinetestMod {
    name = "findbiome";
    release = 24362;
    hash = "1vbridg70pxk7illxxiq2r44j6x4vz21pms61vgk6z6w57ian0d7";
    author = "Wuzzy";
    provides = [ "findbiome" ];
    depends = [ ];
  };
  "x_farming" = mkMinetestMod {
    name = "x_farming";
    release = 24194;
    hash = "1jgpk4vmsi2zvwkwf2sdl1qs3h8cyr5c3588ic5q822v3l675vix";
    author = "SaKeL";
    provides = [ "x_farming" ];
    depends = [ ];
  };
  "trike" = mkMinetestMod {
    name = "trike";
    release = 25798;
    hash = "1qh5mx6bx1m1nn9hh34zxdy7k67d2gal9066mcz09d746mcdyjwy";
    author = "apercy";
    provides = [ "trike" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "airutils";
        packages = [
          "bell07/whynot_game"
          "apercy/airutils"
        ];
      })
    ];
  };
  "dmobs" = mkMinetestMod {
    name = "dmobs";
    release = 24724;
    hash = "0vjf149f3n4y8y14pymk75y34b7vq5qgib5dsayarvbzksimrjph";
    author = "TenPlus1";
    provides = [ "dmobs" ];
    depends = [
      ({
        name = "mobs";
        packages = [
          "StarNinjas/jail_escape"
          "Noodlemire/voxeldungeon"
          "5uper1ach/szombie"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "StarNinjas/veil_of_the_unknown"
          "StarNinjas/ssp"
          "crabycowman123/spmeter"
          "PyuDev/pyutest"
          "mt-mods/blockcolor"
          "TenPlus1/mobs"
          "debiankaios/proxima_survival"
          "miroptics/qiskitblocks_miro"
          "Wuzzy/hades_revisited"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "hilol/epic_combat"
          "JavaFXpert/qiskitblocks"
          "Thunder1035/pacman"
          "PetiAPocok/minetest_extended"
          "1248/agon"
        ];
      })
      ({
        name = "wool";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "miroptics/qiskitblocks_miro"
          "EmptyStar/asuna"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "hilol/epic_combat"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "LibraSubtilis/minebase"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "mob_horse" = mkMinetestMod {
    name = "mob_horse";
    release = 26384;
    hash = "00y52zmh0226pq1vah6d2nahmy89rzd14h82sivvxkr89ky1b3lg";
    author = "TenPlus1";
    provides = [ "mob_horse" ];
    depends = [
      ({
        name = "mobs";
        packages = [
          "StarNinjas/jail_escape"
          "Noodlemire/voxeldungeon"
          "5uper1ach/szombie"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "StarNinjas/veil_of_the_unknown"
          "StarNinjas/ssp"
          "crabycowman123/spmeter"
          "PyuDev/pyutest"
          "mt-mods/blockcolor"
          "TenPlus1/mobs"
          "debiankaios/proxima_survival"
          "miroptics/qiskitblocks_miro"
          "Wuzzy/hades_revisited"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "hilol/epic_combat"
          "JavaFXpert/qiskitblocks"
          "Thunder1035/pacman"
          "PetiAPocok/minetest_extended"
          "1248/agon"
        ];
      })
    ];
  };
  "biofuel" = mkMinetestMod {
    name = "biofuel";
    release = 26326;
    hash = "19p5kx8s6395ljvkbhgixsgdvxf9wbpaack1q41a60619ikwr9l7";
    author = "Lokrates";
    provides = [ "biofuel" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "pa28" = mkMinetestMod {
    name = "pa28";
    release = 23464;
    hash = "0nd5agj1hdkqzllhxqvdqp6bwk7nchikr057z1axihcw8ri7gkrj";
    author = "apercy";
    provides = [ "pa28" ];
    depends = [
      ({
        name = "airutils";
        packages = [
          "bell07/whynot_game"
          "apercy/airutils"
        ];
      })
    ];
  };
  "paleotest" = mkMinetestMod {
    name = "paleotest";
    release = 6612;
    hash = "0nhycnj4zn8nc2qa7714a4qs9wqs0bkpcjykqknp1i0150zall2i";
    author = "ElCeejo";
    provides = [ "paleotest" ];
    depends = [
      ({
        name = "walls";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "carlos_rupp/berzerkpt"
          "hilol/epic_combat"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "mob_core";
        packages = [
          "talas/colourhop"
          "mt-mods/mob_core"
        ];
      })
      ({
        name = "mobkit";
        packages = [
          "benrob0329/ikea"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "talas/colourhop"
          "wsor4035/minekart"
          "Lone_Wolf/voxel_knights"
          "Mantar/exile"
          "mt-mods/mobkit"
          "wsor4035/farlands_reloaded"
        ];
      })
      ({
        name = "stairs";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Minetest/devtest"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "Panquesito7/panqkart"
          "bell07/whynot_game"
          "rheo/moreblocks"
          "mt-mods/blockcolor"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "TenPlus1/stairs"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "screwdriver2" = mkMinetestMod {
    name = "screwdriver2";
    release = 24240;
    hash = "14zgiislggc39bw7am1c80iqm01r465vrgx7q8scl8jwjhix6w5g";
    author = "12Me21";
    provides = [ "screwdriver2" ];
    depends = [ ];
  };
  "ggraffiti" = mkMinetestMod {
    name = "ggraffiti";
    release = 23260;
    hash = "0a9xa05hnfggiqvvzaz1kd88p7nzq9s0i5i64b42bilhlbwkp0pf";
    author = "grorp";
    provides = [ "ggraffiti" ];
    depends = [
      ({
        name = "flow";
        packages = [
          "Kimapr/nonsensical_skyblock"
          "luk3yx/flow"
        ];
      })
      ({
        name = "modlib";
        packages = [
          "Kimapr/nonsensical_skyblock"
          "LMD/modlib"
          "LMD/cellestial_game"
          "sdd/spiraling_down"
        ];
      })
    ];
  };
  "block_league" = mkMinetestMod {
    name = "block_league";
    release = 26895;
    hash = "017if9szkymbw9cnqlirrihp13k08mmrscr68ai5dg2xb04389zi";
    author = "Zughy";
    provides = [
      "bl_decoblocks"
      "bl_tutorial"
      "block_league"
    ];
    depends = [
      ({
        name = "skills";
        packages = [ "giov4/skills" ];
      })
      ({
        name = "panel_lib";
        packages = [
          "KareaGhandTrail/block_assault"
          "Zughy/panel_lib"
        ];
      })
      ({
        name = "arena_lib";
        packages = [ "Zughy/arena_lib" ];
      })
      ({
        name = "worldedit_commands";
        packages = [
          "1248/castrum"
          "Panquesito7/panqkart"
          "Hume2/boxworld3d"
          "sfan5/worldedit"
          "KareaGhandTrail/block_assault_mapmaker"
          "Thunder1035/pacman"
          "mt-mods/dreambuilder_game"
          "MisterE/blockbomber_editor"
          "PetiAPocok/minetest_extended"
        ];
      })
      ({
        name = "weapons_lib";
        packages = [ "Zughy/weapons_lib" ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "achievements_lib";
        packages = [ "Zughy/achievements_lib" ];
      })
      ({
        name = "controls";
        packages = [
          "BuckarooBanzay/super_sam"
          "MisterE/blockbomber"
          "VoxelForge/voxelforge"
          "Casimir/voxelgarden"
          "mt-mods/controls"
          "epCode/what_were_you_expecting"
          "RedundantC/wis_part1"
          "Wuzzy/mineclone2"
          "MeseCraft/mesecraft"
          "ryvnf/mineclonia"
          "hilol/epic_combat"
        ];
      })
    ];
  };
  "maidroid_ng" = mkMinetestMod {
    name = "maidroid_ng";
    release = 20222;
    hash = "0ag9dgicrpadcp0cpgbc6j8i16r1z5924krlawk3xh8qmsm81y32";
    author = "mazes";
    provides = [ "maidroid" ];
    depends = [ ];
  };
  "void_totem" = mkMinetestMod {
    name = "void_totem";
    release = 21090;
    hash = "0j7sl3jhrsgqn9cj41w6rqz35kqdwdxb5jky3fw3dn1a37vbklvr";
    author = "mineclone2-mods";
    provides = [ "void_totem" ];
    depends = [
      ({
        name = "mcl_particles";
        packages = [ "Wuzzy/mineclone2" ];
      })
      ({
        name = "mcl_damage";
        packages = [
          "Wuzzy/mineclone2"
          "ryvnf/mineclonia"
        ];
      })
      ({
        name = "mcl_colors";
        packages = [
          "Wuzzy/mineclone2"
          "ryvnf/mineclonia"
        ];
      })
      ({
        name = "mcl_totems";
        packages = [
          "Wuzzy/mineclone2"
          "ryvnf/mineclonia"
        ];
      })
      ({
        name = "mcl_spawn";
        packages = [
          "Wuzzy/mineclone2"
          "ryvnf/mineclonia"
        ];
      })
      ({
        name = "mcl_inventory";
        packages = [
          "Wuzzy/mineclone2"
          "ryvnf/mineclonia"
        ];
      })
      ({
        name = "mcl_worlds";
        packages = [
          "Wuzzy/mineclone2"
          "ryvnf/mineclonia"
        ];
      })
    ];
  };
  "glider" = mkMinetestMod {
    name = "glider";
    release = 8507;
    hash = "1fsa7730npr860ng359qnz9xz4sg40bj1490pv4zwqqbp010hif9";
    author = "CBugDCoder";
    provides = [ "glider" ];
    depends = [ ];
  };
  "itemframes" = mkMinetestMod {
    name = "itemframes";
    release = 26565;
    hash = "1l6bwz7nqfxdscz2hfxsn2rz4z1s7vg3k2nqd99h4wb4isvi3p5x";
    author = "TenPlus1";
    provides = [ "itemframes" ];
    depends = [ ];
  };
  "modgen" = mkMinetestMod {
    name = "modgen";
    release = 23166;
    hash = "1lxxxw2ily2i4bajf1jjm32hws6hplz57pcpb908w5nq6d7nk2k2";
    author = "BuckarooBanzay";
    provides = [ "modgen" ];
    depends = [ ];
  };
  "whitelist" = mkMinetestMod {
    name = "whitelist";
    release = 19807;
    hash = "01n78a57pd16hrqh83zh15bpsn1big9rj3y22b5f7jhm3iccm2vl";
    author = "Zughy";
    provides = [ "whitelist" ];
    depends = [ ];
  };
  "mobs_water" = mkMinetestMod {
    name = "mobs_water";
    release = 26826;
    hash = "0pa7x7nak3c0sjj0qi4dc0sad3xn085sa8d17v4h4v53qjyzmfzm";
    author = "TenPlus1";
    provides = [
      "mobs_crocs"
      "mobs_fish"
      "mobs_jellyfish"
      "mobs_sharks"
      "mobs_turtles"
    ];
    depends = [
      ({
        name = "mobs";
        packages = [
          "StarNinjas/jail_escape"
          "Noodlemire/voxeldungeon"
          "5uper1ach/szombie"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "StarNinjas/veil_of_the_unknown"
          "StarNinjas/ssp"
          "crabycowman123/spmeter"
          "PyuDev/pyutest"
          "mt-mods/blockcolor"
          "TenPlus1/mobs"
          "debiankaios/proxima_survival"
          "miroptics/qiskitblocks_miro"
          "Wuzzy/hades_revisited"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "hilol/epic_combat"
          "JavaFXpert/qiskitblocks"
          "Thunder1035/pacman"
          "PetiAPocok/minetest_extended"
          "1248/agon"
        ];
      })
    ];
  };
  "jitprofiler" = mkMinetestMod {
    name = "jitprofiler";
    release = 14451;
    hash = "0dkna11h8wrca5qlns8zya1rdrfy09gjn7bzarir5f9ba6806h0p";
    author = "jwmhjwmh";
    provides = [ "jitprofiler" ];
    depends = [ ];
  };
  "owospeak" = mkMinetestMod {
    name = "owospeak";
    release = 13911;
    hash = "1g0psff7861gq8gv26wikfn64mhkf5wdh452ay3csn1pm0bc324p";
    author = "ROllerozxa";
    provides = [ "owospeak" ];
    depends = [ ];
  };
  "kartcar" = mkMinetestMod {
    name = "kartcar";
    release = 25929;
    hash = "0718sd0a20hrdcpq7dafyz17hmv38j512v96y398s9iclqs9a44m";
    author = "apercy";
    provides = [ "kartcar" ];
    depends = [
      ({
        name = "biofuel";
        packages = [
          "bell07/whynot_game"
          "Lokrates/biofuel"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "player_api";
        packages = [
          "aerkiaga/nodeverse"
          "Hume2/minesweeper_3d"
          "rubenwardy/capturetheflag"
          "StarNinjas/jail_escape"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "BuckarooBanzay/super_sam"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "BRNSystems/blocky_portaling"
          "Casimir/voxelgarden"
          "Panquesito7/panqkart"
          "1248/regnum"
          "bell07/whynot_game"
          "xenonca/luckysweeper"
          "1248/regnum2"
          "mt-mods/driftgame"
          "1248/castrum"
          "Blockhead/sotm"
          "MeseCraft/mesecraft"
          "Hume2/boxworld3d"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "Astrobe/minefall"
          "Lone_Wolf/torrlund"
          "KareaGhandTrail/block_assault"
          "Wuzzy/lazarr"
          "dibesfer/colorlandia"
          "xenonca/luckydude"
          "Emojiminetest/parkour"
          "carlos_rupp/berzerkpt"
          "Mantar/exile"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "jamiebearcub/grand_theft_box"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "mobkit";
        packages = [
          "benrob0329/ikea"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "talas/colourhop"
          "wsor4035/minekart"
          "Lone_Wolf/voxel_knights"
          "Mantar/exile"
          "mt-mods/mobkit"
          "wsor4035/farlands_reloaded"
        ];
      })
      ({
        name = "dye";
        packages = [
          "rubenwardy/capturetheflag"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "MeseCraft/mesecraft"
          "1248/castrum"
          "Panquesito7/panqkart"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "hilol/epic_combat"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "giga-turbo/codecube"
          "mt-mods/dreambuilder_game"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "LibraSubtilis/minebase"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "goblins" = mkMinetestMod {
    name = "goblins";
    release = 26914;
    hash = "1wkq4zbp3wbh5972844wdacdv6ryf3ax3wrcj4368zpckm95sj9w";
    author = "FreeLikeGNU";
    provides = [ "goblins" ];
    depends = [ ];
  };
  "cblocks" = mkMinetestMod {
    name = "cblocks";
    release = 26296;
    hash = "13d942lxlbd4ln5y2lwm72jcfyq6prwh2ihk48k0231l60zi9sii";
    author = "TenPlus1";
    provides = [ "cblocks" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "dlxtrains" = mkMinetestMod {
    name = "dlxtrains";
    release = 25253;
    hash = "0ny36xvd9gq2fndrm2876589jr6v1c86cikkbpwbgph0yvdl7cls";
    author = "Marnack";
    provides = [
      "dlxtrains"
      "dlxtrains_cargo"
      "dlxtrains_diesel_locomotives"
      "dlxtrains_industrial_wagons"
      "dlxtrains_support_wagons"
    ];
    depends = [
      ({
        name = "advtrains_train_track";
        packages = [ "orwell/advtrains" ];
      })
      ({
        name = "advtrains";
        packages = [ "orwell/advtrains" ];
      })
    ];
  };
  "homedecor_modpack" = mkMinetestMod {
    name = "homedecor_modpack";
    release = 25995;
    hash = "05dhj6p3vkmkhiwdbbd4jawdpzhh9972qifw4qkj9k6bvnrwfq2b";
    author = "mt-mods";
    provides = [
      "building_blocks"
      "fake_fire"
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
      "itemframes"
      "lavalamp"
    ];
    depends = [
      ({
        name = "unifieddyes";
        packages = [
          "mt-mods/unifieddyes"
          "bell07/whynot_game"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
        ];
      })
      ({
        name = "basic_materials";
        packages = [
          "mt-mods/basic_materials"
          "Kimapr/nonsensical_skyblock"
          "joe7575/techage_modpack"
          "bell07/whynot_game"
          "MeseCraft/mesecraft"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
          "rlars/occupymoon_game"
        ];
      })
      ({
        name = "xcompat";
        packages = [
          "mt-mods/xcompat"
          "BuckarooBanzay/super_sam"
          "Kimapr/nonsensical_skyblock"
          "bell07/whynot_game"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
        ];
      })
    ];
  };
  "oneblock" = mkMinetestMod {
    name = "oneblock";
    release = 13664;
    hash = "1birkid04r16z0pbnwy1gfifnrfsx7ixb6255b1y348czv6h58rc";
    author = "NO11";
    provides = [ "oneblock" ];
    depends = [ ];
  };
  "hammermod" = mkMinetestMod {
    name = "hammermod";
    release = 5912;
    hash = "1bwilqamd7bhbqpjn2nbvdg4x3v151lsxhqdr6rr74zgc36bhcg4";
    author = "cultom";
    provides = [ "hammermod" ];
    depends = [ ];
  };
  "simple_woodcutter" = mkMinetestMod {
    name = "simple_woodcutter";
    release = 20594;
    hash = "1pq4pv236c5hxmqqs0rm0fnygv85l22kin839add514g9hj0yssk";
    author = "luarocks";
    provides = [ "simple_woodcutter" ];
    depends = [ ];
  };
  "what_is_this_uwu" = mkMinetestMod {
    name = "what_is_this_uwu";
    release = 26750;
    hash = "0bgx7mil2kax1f5n03ag41bdxfrg78an1liakbcqcg21mzmbxx6z";
    author = "Rotfuchs-von-Vulpes";
    provides = [ "what_is_this_uwu" ];
    depends = [ ];
  };
  "ambience" = mkMinetestMod {
    name = "ambience";
    release = 26638;
    hash = "0nwf6y9lnz94jjq7l5ksc0chwi9b5kq2srjz6bfv0zya9wyjbpkm";
    author = "TenPlus1";
    provides = [ "ambience" ];
    depends = [ ];
  };
  "swamp" = mkMinetestMod {
    name = "swamp";
    release = 26133;
    hash = "079m84w64i3vaa6xic9izn1cv8zs2jgl6jnmjgd0fwriygslwh37";
    author = "Atlante";
    provides = [ "swamp" ];
    depends = [
      ({
        name = "flowers";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "mt-mods/blockcolor"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Astrobe/minefall"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "JavaFXpert/qiskitblocks"
          "BuckarooBanzay/mesecons_lab"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "vessels";
        packages = [
          "rubenwardy/capturetheflag"
          "Noodlemire/voxeldungeon"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "bell07/whynot_game"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Amaz/lordofthetest"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "farming";
        packages = [
          "Noodlemire/voxeldungeon"
          "Kimapr/nonsensical_skyblock"
          "UnbrokenUnworn/modular_portals"
          "Casimir/voxelgarden"
          "bell07/whynot_game"
          "1248/regnum"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "TenPlus1/farming"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "Astrobe/minefall"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
      ({
        name = "fireflies";
        packages = [
          "rubenwardy/capturetheflag"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "MeseCraft/mesecraft"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "JavaFXpert/qiskitblocks"
          "Shara/fireflies"
          "mt-mods/dreambuilder_game"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "LibraSubtilis/minebase"
          "PetiAPocok/minetest_extended"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "music_modpack" = mkMinetestMod {
    name = "music_modpack";
    release = 25536;
    hash = "0w7idndz94h3sm064867yfjxgn15mzn4bscl41f98hh1vyws1hba";
    author = "mt-mods";
    provides = [
      "music_api"
      "music_default"
      "music_dfcaverns"
    ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "beautiflowers" = mkMinetestMod {
    name = "beautiflowers";
    release = 25499;
    hash = "1qklhcc92x2hmag89l2cfmi25qfn6kqfndz0ai9n0dz1fzqjwkg9";
    author = "1faco";
    provides = [ "beautiflowers" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "fumoplushies" = mkMinetestMod {
    name = "fumoplushies";
    release = 26907;
    hash = "13qhfvrlk8g9ay2si47nb8nzi6yj7283lv2wzcy62xy2nqayf4j2";
    author = "aSliceOfCake";
    provides = [ "fumoplushies" ];
    depends = [
      ({
        name = "default";
        packages = [
          "rubenwardy/capturetheflag"
          "AiTechEye/xaenvironment"
          "Hi_World/newplanet"
          "Noodlemire/voxeldungeon"
          "JALdMIC/survivethedays"
          "sunnysideup/holidayhorrors"
          "Kimapr/nonsensical_skyblock"
          "Casimir/voxelgarden"
          "1248/regnum"
          "bell07/whynot_game"
          "1248/regnum2"
          "1248/castrum"
          "Panquesito7/panqkart"
          "MeseCraft/mesecraft"
          "debiankaios/proxima_survival"
          "EmptyStar/asuna"
          "miroptics/qiskitblocks_miro"
          "KareaGhandTrail/block_assault_mapmaker"
          "KareaGhandTrail/block_assault"
          "Amaz/lordofthetest"
          "carlos_rupp/berzerkpt"
          "BuckarooBanzay/mesecons_lab"
          "JavaFXpert/qiskitblocks"
          "mt-mods/dreambuilder_game"
          "giga-turbo/codecube"
          "niwla23/runorfall"
          "Thunder1035/pacman"
          "hilol/epic_combat"
          "Big_Caballito/no_mans_land"
          "TheFanne/raining_nodes"
          "rlars/occupymoon_game"
          "PetiAPocok/minetest_extended"
          "mooD_Slayer/ksurvive"
          "Minetest/minetest_game"
        ];
      })
    ];
  };
  "demoiselle" = mkMinetestMod {
    name = "demoiselle";
    release = 25962;
    hash = "0wwvvsya447hgzy60n8aazawgx65jwfhbmgcwb95lsy6y1m6pqjg";
    author = "apercy";
    provides = [ "demoiselle" ];
    depends = [
      ({
        name = "airutils";
        packages = [
          "bell07/whynot_game"
          "apercy/airutils"
        ];
      })
    ];
  };
  "lavastuff" = mkMinetestMod {
    name = "lavastuff";
    release = 11424;
    hash = "19hddv6b912cir5nj4vgnjrbk06j7z2flzgq1bqxhbkl69fablm3";
    author = "Lone_Wolf";
    provides = [ "lavastuff" ];
    depends = [ ];
  };
  "ju52" = mkMinetestMod {
    name = "ju52";
    release = 24137;
    hash = "0bpwnznrnngz7b38ffh5lljw82rl46c4b8dy4bsrxshgaxx5vdrq";
    author = "apercy";
    provides = [ "ju52" ];
    depends = [
      ({
        name = "airutils";
        packages = [
          "bell07/whynot_game"
          "apercy/airutils"
        ];
      })
    ];
  };
}
