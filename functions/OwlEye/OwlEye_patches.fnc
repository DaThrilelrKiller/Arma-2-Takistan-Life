private ["_binConfigPatches","_patchEntry","_patches"];
_patches = ["C1987_P99" ,"C1987_Tactical_Sunglasses" ,"CAData" ,"HALO_Test" ,"CAAnimals" ,"CA_Anims" ,"CA_Anims_Sdr" ,"CA_Anims_Wmn" ,"CA_Anims_E" ,"CA_Anims_E_Sdr" ,"CA_Anims_E_Wmn" ,"CABuildings" ,"CA_E" ,"CA_PMC" ,"CA_Heads" ,"CAData_ParticleEffects" ,"CA_Dubbing" ,"CA_Dubbing_Counterattack" ,"CA_Dubbing_E" ,"CA_Dubbing_PMC" ,"CA_Editor" ,"CALanguage" ,"CALanguage_e" ,"CALanguage_PMC" ,"CALanguage_missions" ,"CALanguage_missions_e" ,"CALanguage_missions_PMC" ,"CA_HC_Sounds" ,"CA_Modules" ,"CA_Missions_AlternativeInjurySimulation" ,"CA_Modules_Alice" ,"CA_Missions_AmbientCombat" ,"CA_Modules_Animals" ,"CA_Missions_BattlefieldClearance" ,"CA_Modules_clouds" ,"CA_Modules_Coin" ,"CA_Modules_DynO" ,"CA_Missions_FirstAidSystem" ,"CA_Modules_Functions" ,"CA_Missions_GarbageCollector" ,"CA_HighCommand" ,"CA_Modules_Marta" ,"CA_Modules_Silvie" ,"BI_SRRS" ,"CA_Modules_UAV" ,"CA_Modules_ZoRA" ,"CA_Modules_E" ,"CA_Modules_Alice2" ,"CA_Modules_E_DynO" ,"CA_Modules_E_Functions" ,"CA_Modules_E_Gita" ,"CA_Modules_E_Jukebox" ,"CA_Modules_E_OO" ,"CA_Support" ,"CA_Modules_E_UAV" ,"CA_Modules_E_UAV_Heli" ,"CA_Modules_E_Weather" ,"CA_Modules_PMC" ,"CA_Modules_PMC_Functions" ,"CA_Modules_PMC_SimpleFIrstAid" ,"CA_MPA" ,"CA_MPA_Core" ,"CA_MPA_Challenges" ,"CA_MPA_Scenarios" ,"CAMusic" ,"CARoads2" ,"CARoads2Bridge" ,"CARoads2Dam" ,"CARoads_E" ,"CARoads_PMC_Bridge" ,"CARocks2" ,"CARocks_E" ,"CASigns2" ,"CASounds_Missions" ,"CA_SoundsMissions_E" ,"CASounds" ,"CA_Sounds_Baf" ,"CASounds_E" ,"CAStructures" ,"CAStructures_A_BuildingWIP" ,"CAStructures_A_CraneCon" ,"CAStructuresLand_A_MunicipalOffice" ,"CAStructuresBarn_W" ,"CAStructures_Castle" ,"CAStructuresHouse" ,"CAStructuresHouse_A_FuelStation" ,"CAStructuresHouse_A_Hospital" ,"CAStructuresHouse_A_Office01" ,"CAStructuresHouse_A_Office02" ,"CAStructuresHouse_a_stationhouse" ,"CAStructuresHouse_Church_02" ,"CAStructuresHouse_Church_03" ,"CAStructuresHouse_Church_05R" ,"CAStructuresHouse_HouseBT" ,"CAStructuresHouse_HouseV2" ,"CAStructuresHouse_HouseV" ,"CAStructuresLand_Ind_Stack_Big" ,"CAStructures_IndPipe1" ,"CAStructuresInd_Quarry" ,"Ind_SawMill" ,"CAStructures_Mil" ,"CAStructures_Misc_Powerlines" ,"CAStructures_Nav" ,"CAStructuresLand_Nav_Boathouse" ,"pond_test" ,"CAStructures_Proxy_BuildingParts" ,"CAStructures_Proxy_Ruins" ,"CAStructures_Rail" ,"CAStructuresHouse_rail_station_big" ,"CAStructures_Ruins" ,"CAStructuresShed_Small" ,"CAStructuresHouse_Shed_Ind" ,"CAStructures_Wall" ,"CAFonts" ,"Utes" ,"CAVideo2_PMC" ,"car_pack" ,"CHN_Urban" ,"cl_159" ,"blueveins_car" ,"cl_cygnet" ,"dans_car" ,"cl_f150_1" ,"cl_f350" ,"cl_impala" ,"cl_monaco" ,"cl_pacer" ,"1971_pantera" ,"cl_ram_3500" ,"cl_wrangler" ,"x6m" ,"cl3_vehiclefunctions" ,"ALFA_ROMEO_BRERA" ,"ASTON_MARTIN_DB9" ,"ASTON_MARTIN_DBR9" ,"AUDI_FSI_LE_MANS" ,"AUDI_TT_QUATTRO_S_LINE" ,"BMW_135I" ,"BMW_M3" ,"BMW_M3_RALLY" ,"BMW_M6" ,"BUGATTI_VEYRON" ,"CADILLAC_CTS","240GD","barcuda" ,"cd71hm" ,"challenger" ,"civic" ,"cooter" ,"cuda" ,"fury" ,"hemicuda" ,"jailbus" ,"mackr" ,"monaco" ,"oldtruc2" ,"oldtruck" ,"oltruc3" ,"mackr2rig" ,"roadrunner2" ,"roadrunner" ,"rosco" ,"sahco" ,"schoolbus" ,"cl_wheelchair" ,"CorePatch2" ,"CSJ_GyroAC" ,"CSJ_Snake" ,"CSJ_Sounds" ,"Da_kart" ,"dak_mak_want" ,"dar_ilpd" ,"dar_ilpdn" ,"DAR_ILSWAT" ,"dhi_FordCV","E76_buildingsA1_hotel" ,"E76_objectsA1_Misc" ,"E76_objectsHouse_E76_jail" ,"E76_buildings" ,"F430_Scuderia","GLT_Objects" ,"GNT_C185" ,"GNTFSF" ,"GNT_PiperWII" ,"GNT_Scuba" ,"hazmat" ,"IL_Buildings" ,"afraf_air" ,"il_ambulance" ,"gmc_ambulance" ,"il_bank" ,"il_bearcat" ,"il_charger" ,"il_init" ,"il_m5" ,"fs_pd" ,"il_f350sheriff" ,"il_silverado" ,"spikestrip" ,"il_suburban" ,"il_swat_tcg" ,"il_carpack" ,"il_vault" ,"il_crown_victoria" ,"gsep_miros" ,"kyo_microlight" ,"kyo_platforms","mbg_celle2_roads" ,"MBG_Buildings_2" ,"MBG_Buildings_2_EU" ,"MBG_Buildings_3" ,"MBG_Killhouses" ,"norrn_dbo_fastrope" ,"engine" ,"ol_sound" ,"ol_wheeled" ,"OSShDY" ,"Oz_Is_Objects" ,"Pure_Gaming" ,"tahoe_k9" ,"police" ,"RAV_Lifter" ,"Eslinga" ,"Eslinga_L" ,"Eslinga_M" ,"Eslinga_P" ,"RH_m4_cfg" ,"RTH_blue_light" ,"RTH_Wind_Turbines" ,"rz_tunnelentrance" ,"rz_objects" ,"FirefighterWeap2" ,"sheetrockhookmed" ,"jerseybarrier" ,"sah_civilian_patch" ,"SFG_Items" ,"SantaSleigh" ,"CASoundspatch" ,"Tanker146" ,"tcg_aprilia" ,"tcg_bell206" ,"tcg_bmw_m3" ,"tcg_firehouse" ,"tcg_hrly" ,"tcg_hrlycop" ,"tcg_ssign90" ,"tcg_objects" ,"tcg_police" ,"tcg_policev" ,"tcg_remington" ,"tcg_sub" ,"tcg_taurus" ,"Toolbox" ,"trafficlight" ,"uscg_jfh_factions" ,"yup_USCoastGuard_Litter" ,"usec_bell206" ,"usec_ch53" ,"usec_maule" ,"usec_rig_a" ,"bus" ,"chariot_elevateur" ,"Chevroletambulance" ,"chevrolet_impala_CLPD" ,"crowntaxi" ,"Dodge_Charger_CLPD" ,"Ford_Crown_clpd" ,"Ford_Crown_ed" ,"Ford_Crown_rent" ,"Lamborghini" ,"ram3500tow" ,"Scania_420" ,"suburban" ,"suburban_swat" ,"VIL_sira_Police" ,"VILAS_CTL_Forces" ,"x26" ,"cba_xeh" ,"Extended_EventHandlers" ,"CBA_Extended_EventHandlers" ,"anders_s_Environmental" ,"as_eu_oa_lights" ,"Bay_City_Buildings" ,"bra_obj" ,"CA_Animals2" ,"CA_Animals2_Anim_Config" ,"CA_Animals2_Chicken" ,"CA_Animals2_Cow" ,"CA_Animals2_Dogs" ,"CA_Animals2_Dogs_Fin" ,"CA_Animals2_Dogs_Pastor" ,"CA_Animals2_Goat" ,"CA_Animals2_Rabbit" ,"CA_Animals2_Sheep" ,"CA_Animals2_WildBoar" ,"CA_Animals_E" ,"CA_Anims_Char" ,"CABuildings2" ,"A_Crane_02" ,"A_GeneralStore_01" ,"CABuildings2_A_Pub" ,"A_statue" ,"Barn_Metal" ,"Church_01" ,"Farm_Cowshed" ,"Farm_WTower" ,"CAHouseBlock_A" ,"CAHouseBlock_B" ,"CAHouseBlock_C" ,"CAHouseBlock_D" ,"HouseRuins" ,"Ind_Dopravnik" ,"Ind_Expedice" ,"Ind_MalyKomin" ,"Ind_Mlyn" ,"Ind_Pec" ,"ind_silomale" ,"Ind_SiloVelke" ,"Ind_Vysypka" ,"Ind_Garage01" ,"CAStructures_IndPipe1_todo_delete" ,"IndPipe2" ,"Ind_Shed_01" ,"Ind_Shed_02" ,"Ind_Tank" ,"Ind_Workshop01" ,"CABuildings2_Misc_Cargo" ,"Misc_PowerStation" ,"Misc_WaterStation" ,"Rail_House_01" ,"Shed_small" ,"Shed_wooden" ,"CA_E_ParticleEffects" ,"CA_DubbingRadio_E" ,"CAMisc_fix" ,"CAMisc_fix_Str" ,"CA_Missions" ,"CA_Missions_E" ,"CAMusic_E" ,"CAMusic_PMC" ,"A_TVTower" ,"CAStructures_Nav_pier" ,"CAStructures_Railway" ,"CAStructures_E" ,"CAStructures_E_HouseA" ,"CAStructures_E_HouseA_A_BuildingWIP" ,"CAStructures_E_HouseA_A_CityGate1" ,"CAStructures_E_HouseA_A_Minaret" ,"CAStructures_E_HouseA_A_Minaret_Porto" ,"CAStructures_E_HouseA_A_Mosque_big" ,"CAStructures_E_HouseA_A_Mosque_small" ,"CAStructures_E_HouseA_A_Office01" ,"CAStructures_E_HouseA_a_stationhouse" ,"CAStructures_E_HouseA_A_Statue" ,"CAStructures_E_HouseA_A_Villa" ,"CAStructures_E_HouseC" ,"CAStructures_E_HouseK" ,"CAStructures_E_HouseL" ,"CAStructures_E_Ind" ,"CAStructures_E_Ind_Ind_Coltan_Mine" ,"CAStructures_E_Ind_Ind_FuelStation" ,"CAStructures_E_Ind_Ind_Garage01" ,"CAStructures_E_Ind_Oil_Mine" ,"CAStructures_E_Ind_IndPipes" ,"CAStructures_E_Ind_Misc_PowerStation" ,"CAStructures_E_Ind_Ind_Shed" ,"CAStructures_E_Mil" ,"CAStructures_E_Misc" ,"CAStructures_E_Misc_Misc_cables" ,"CAStructures_E_Misc_Misc_Construction" ,"CAStructures_E_Misc_Misc_Garbage" ,"CAStructures_E_Misc_Misc_Lamp" ,"CAStructures_E_Misc_Misc_powerline" ,"CAStructures_E_Misc_Misc_Water" ,"CAStructures_E_Misc_Misc_Well" ,"CAStructures_E_Wall" ,"CAStructures_E_Wall_Wall_L" ,"CAStructures_PMC" ,"CAStructures_PMC_Buildings" ,"CAStructures_PMC_Buildings_Bunker" ,"CAStructures_PMC_Buildings_GeneralStore_PMC" ,"CAStructures_PMC_Buildings_Ruin_Cowshed" ,"CAStructures_PMC_Ind" ,"CAStructures_PMC_FuelStation" ,"CAStructures_PMC_Misc" ,"CAStructures_PMC_Misc_Shed" ,"CAStructures_PMC_Ruins" ,"CAStructures_PMC_Walls" ,"CAUI" ,"CAWeapons" ,"CAWeapons_AK" ,"CAWeapons_AmmoBoxes" ,"CAWeapons_bizon" ,"CAWeapons_Colt1911" ,"CAWeapons_DMR" ,"CAweapons_ksvk" ,"CAWeapons_M1014" ,"CAweapons_m107" ,"CAWeapons_M252_81mm_Mortar" ,"CAWeapons_Metis_AT_13" ,"CAWeapons_2b14_82mm_Mortar" ,"CAWeapons_Saiga12K" ,"CAWeapons_SPG9" ,"CAWeapons_VSS_vintorez" ,"CAWeapons_ZU23" ,"CAWeapons_E_AmmoBoxes","E76_Objects" ,"E76_objectsA1_watertank" ,"E76_objectsapplewood" ,"E76_BuildingsShops" ,"E76_objectsdam" ,"E76_objectsjunkpress" ,"E76objectsVictimboard" ,"FullNVGoggles" ,"KPFS_Weapons" ,"KPFS_MP5" ,"KPFS_Weapons_P2000" ,"KPFS_P220" ,"KPFS_P225" ,"KPFS_P226" ,"KPFS_P38" ,"KPFS_Weapons_walther" ,"KPFS_P88" ,"KPFS_Weapons_HKUSP" ,"KPFS_P99" ,"map_no_sat" ,"mbg_celle2_objects" ,"ol_loading" ,"PG_Buildings" ,"RH_aks_cfg" ,"RH_de_cfg" ,"RH_hk416_cfg" ,"RH_m14" ,"RH_smg" ,"RWS_M16" ,"RZ_RoadsTunnel" ,"rz_dunkinbronuts" ,"firestation" ,"mainstation" ,"lifepak" ,"smk_anims" ,"cba_common" ,"cba_events" ,"cba_hashes" ,"cba_help" ,"cba_network" ,"cba_strings" ,"cba_ui" ,"cba_ui_helper" ,"cba_vectors" ,"andy_mags" ,"APLION_Buildings" ,"ASC_EU_Lights" ,"as_eu_oa_mosque" ,"as_eu_oa_commercial" ,"as_eu_oa_industrial" ,"CACharacters" ,"CACharacters_E_Head" ,"CACharacters_PMC_Head" ,"CA_Dubbing_Baf" ,"CA_DubbingRadio_PMC" ,"CAMisc2" ,"CAMisc" ,"CAMisc_fix_A2FREE" ,"CAMisc_fix_Weap" ,"CA_Missions_Armory2" ,"CA_Missions_SecOps" ,"CA_Missions_Templates_SecOps" ,"CA_Missions_BAF" ,"CA_Missions_BAF_Templates_SecOps" ,"CA_Missions_E_Armory2" ,"CA_Missions_E_SecOps" ,"CA_Missions_E_Templates_SecOps" ,"CA_Missions_PMC" ,"CA_Modules_StratLayer" ,"CA_MPA_MP" ,"stra_gui" ,"Warfare2" ,"Warfare2_E" ,"CAWater" ,"CAWeapons2" ,"CAWeapons2_HuntingRifle" ,"CAWeapons2_RPG18" ,"CAWeapons2_SMAW" ,"CAWeapons_Kord" ,"cal68o" ,"cal68w" ,"cl_HoldenMonarocop" ,"CL_torq" ,"CAWeapons_E" ,"MBG_John" ,"NZDF" ,"Rebel" ,"JFH_VEHICLES" ,"yup_uscg_pilots" ,"cba_ai" ,"cba_arrays" ,"cba_diagnostic" ,"cba_versioning" ,"AT_Glasses" ,"bk12_naval" ,"CABuildingParts" ,"CABuildingParts_Signs" ,"CATEC" ,"CACharacters2" ,"CACharacters_E" ,"Chernarus" ,"CAMisc_fix_Ch2" ,"CA_Missions_BAF_2" ,"missions_ew" ,"CATracked" ,"CAWater2" ,"CAWater2_Destroyer" ,"CAWater2_fishing_boat" ,"CAWater2_Fregata" ,"CAWater2_LHD" ,"CAWater2_seafox" ,"CAWater2_smallboat_1" ,"CAWeapons_Warfare_weapons" ,"CAWheeled" ,"CAWheeled_Pickup" ,"CAWheeled_Offroad" ,"BoatSAR" ,"cl2_vehicle_2" ,"cl3_sounds" ,"cl_aironeraceing" ,"cl_sigmawheeled" ,"CLAY_Dogs" ,"GLT_M300T" ,"yup_US_Navy_hh60j" ,"ibr_police" ,"KPFS_THW_characters" ,"tcg_wrun" ,"CAAir" ,"cba_main" ,"CBA_A2_main" ,"CBA_OA_main" ,"big_boat" ,"CAMisc3" ,"CAWater2_seafox_EP1" ,"CAStructures_E_Misc_Misc_Interier" ,"CAStructures_E_Misc_Misc_Market" ,"CATracked2" ,"CATracked2_2S6M_Tunguska" ,"CATracked2_AAV" ,"CATracked2_BMP3" ,"CATracked2_T34" ,"CATracked2_T90" ,"CATracked2_us_m270mlrs" ,"CAWheeled2" ,"CAWheeled2_BTR90" ,"CAWheeled2_GAZ39371" ,"CAWheeled2_HMMWV_BASE" ,"CAWheeled2_M1114_Armored" ,"CAWheeled2_HMMWV_Ambulance" ,"CAWheeled2_M998A2_Avenger" ,"CAWheeled2_Ikarus" ,"CAWheeled2_Kamaz" ,"CAWheeled2_LADA" ,"CAWheeled2_LAV25" ,"CAWheeled2_MMT" ,"CAWheeled2_MTVR" ,"CAWheeled2_TowingTractor" ,"CAWheeled2_V3S" ,"CAWheeled2_VWGolf" ,"CAWheeled3" ,"CAWheeled3_M1030" ,"CAWheeled3_TT650" ,"CAWheeled_E" ,"CAWheeled_E_ATV" ,"CAWheeled_E_BRDM2" ,"CAWheeled_E_BTR40" ,"CAWheeled_E_BTR60" ,"CAWheeled_E_Pickup" ,"CAWheeled_E_Offroad" ,"CAWheeled_E_HMMWV" ,"CAWheeled_E_Ikarus" ,"CAWheeled_E_LADA" ,"CAWheeled_E_LandRover" ,"CAWheeled_E_M1030" ,"CAWheeled_E_MTVR" ,"CAWheeled_E_Old_bike" ,"CAWheeled_E_Old_moto" ,"CAWheeled_E_s1203" ,"CAWheeled_E_SCUD" ,"CAWheeled_E_stryker" ,"CAWheeled_E_SUV" ,"CAWheeled_E_TT650" ,"CAWheeled_E_UAZ" ,"CAWheeled_E_Volha" ,"CAWheeled_PMC" ,"CAWheeled_PMC_ArmoredSUV" ,"CorePatch_A2" ,"CorePatch_CCP_67330_A2" ,"CorePatch_CCP_67542" ,"CorePatch_CCP_67951_A2" ,"CorePatch_CCP_68115" ,"Enzo" ,"GLT_Falcon" ,"KPFS_german_police_vest_des" ,"Lancer_Evo_X" ,"Mac_Laren_MP4" ,"GBU27" ,"task_force_radio_items" ,"A319MPA" ,"as_eu_oa_interior" ,"as_eu_oa_military" ,"as_eu_oa_misc" ,"as_eu_oa_plants" ,"as_eu_oa_residential" ,"as_eu_oa_roads" ,"as_eu_oa_rocks" ,"as_eu_oa_sidewalks" ,"as_eu_oa_signs" ,"as_eu_oa_walls" ,"Audi_A8_Limo" ,"CAA10" ,"CA_AH64D" ,"CAAir2" ,"CAAir2_C130J" ,"CAAir2_ChukarTarget" ,"CAAir2_F35B" ,"Arma2_Ka52" ,"CAAir2_MQ9PredatorB" ,"CAAir2_MV22" ,"CAAir2_Pchela1T" ,"CA_AIR2_Su25" ,"CAAir2_UH1Y" ,"CAAir3" ,"CAAir3_Su34" ,"CA_BAF" ,"CALanguage_Baf" ,"CALanguageMissions_baf" ,"WarfareBuildings" ,"CAMisc_E" ,"CAMisc_E_WF" ,"CAMisc_fix_air" ,"CA_Modules_ARTY" ,"CAMP_Armory_Misc" ,"CAMP_Armory_Misc_Concrete_Wall" ,"CAMP_Armory_Misc_Entrance_Gate" ,"CAMP_Armory_Misc_Info_Board" ,"CAMP_Armory_Misc_Infostands" ,"CAMP_Armory_Misc_Laptop" ,"CAMP_Armory_Misc_Loudspeakers" ,"CAMP_Armory_Misc_Plasticpole" ,"CAMP_Armory_Misc_Red_Light" ,"CAMP_Armory_Misc_Sign_Armex" ,"CAMP_Armory_Misc_Sign_Direction" ,"ProvingGrounds_PMC" ,"Shapur_BAF" ,"CASigns_E" ,"Takistan" ,"Warfare2Vehicles" ,"CAWeapons_BAF" ,"CAWeapons_E_AGS" ,"CAWeapons_E_AK" ,"CAWeapons_E_Colt1911" ,"CAWeapons_E_D30" ,"CAWeapons_E_DSHKM" ,"CAWeapons_E_FIM92_static" ,"CAWeapons_E_fnfal" ,"CAWeapons_E_G36" ,"CAWeapons_E_GrenadeLauncher" ,"CAWeapons_E_Igla" ,"CAWeapons_E_Javelin" ,"CAWeapons_E_KORD" ,"CAWeapons_E_ksvk" ,"CAWeapons_E_LeeEnfield" ,"CAweapons_E_m107" ,"CAWeapons_E_M110" ,"CAWeapons_E_M119_Howitzer" ,"CAWeapons_E_M136" ,"CAWeapons_E_M14" ,"CAWeapons_E_M16" ,"CAWeapons_E_M240" ,"CAWeapons_E_M252_81mm_Mortar" ,"CAWeapons_E_M2StaticMG" ,"CAWeapons_E_M47" ,"CAWeapons_E_M9" ,"CAWeapons_E_MAAWS" ,"CAWeapons_E_Makarov" ,"CAWeapons_E_Metis" ,"CAWeapons_E_Mk19_MiniTriPod" ,"CAWeapons_E_PK" ,"CAWeapons_E_Podnos_2b14_82mm" ,"CAWeapons_E_RPG18" ,"CAWeapons_E_RPG7" ,"CAWeapons_E_scar" ,"CAWeapons_E_Searchlight" ,"CAWeapons_E_SPG9" ,"CAWeapons_E_STATIC" ,"CAWeapons_E_Stinger" ,"CAWeapons_E_Strela" ,"CAWeapons_E_TOW" ,"CAWeapons_E_ZU23" ,"CAWeapons_PMC" ,"CAWeapons_PMC_AA_12" ,"CAWeapons_PMC_AS50" ,"CAWeapons_PMC_XM8" ,"CAWheeled_E_Ural" ,"CAWheeled_E_V3S" ,"zargabad" ,"HH65C" ,"KPFS_DM" ,"KPFS_G1" ,"KPFS_G3" ,"KPFS_HK416" ,"KPFS_HK4" ,"KPFS_Makarov" ,"KPFS_MG1" ,"KPFS_MP2" ,"KPFS_MPi74" ,"KPFS_HKP30" ,"KPFS_HKP7" ,"KPFS_PM63" ,"KPFS_PSL" ,"KPFS_RPD" ,"KPFS_SKS" ,"KPFS_STG" ,"KPFS_TT33" ,"MAP_EU" ,"mas_uk_sfwg" ,"mbg_celle2_data" ,"RAB_l111a1" ,"task_force_radio" ,"cba_xeh_a2" ,"CBA_A2_xeh" ,"as_eu_oa_wrecks" ,"Emita" ,"CA_CruiseMissile" ,"CAAir_E" ,"CAAir_E_A10" ,"CAAir_E_AH64D" ,"CAAir_E_AH6J" ,"CAAir_E_An2" ,"CAAir_E_C130J" ,"CAAir_E_CH_47F" ,"CAAir_E_Halo" ,"CAAir_E_MI8" ,"CAAir_E_Mi24" ,"CA_AIR_E_MQ9PredatorB" ,"CA_AIR_E_Su25" ,"CAAir_E_UH1H_EP1" ,"CAAir_E_UH60M" ,"CAAir_PMC" ,"CAAir_PMC_KA137" ,"CAAir_PMC_KA60" ,"CACharacters_BAF" ,"CACharacters_BAF_Head" ,"CACharacters_PMC" ,"CACharacters_W_BAF" ,"Desert_E" ,"CA_L39" ,"CA_Missions2_PMC" ,"CATracked_E" ,"CATracked_E_BMP2" ,"CATracked_E_M113" ,"CATracked_E_M1_Abrams" ,"CATracked_E_M2A2_Bradley" ,"CATracked_E_T34" ,"CATracked_E_T55" ,"CATracked_E_T72" ,"CATracked_E_us_m270mlrs" ,"CATracked_E_ZSU" ,"CAWheeled_D_BAF" ,"CAWheeled_W_BAF" ,"CorePatch_M113_PMC" ,"ibr_lcivilian_patch" ,"mbg_celle2" ,"OH58" ,"pmo_mh6medevac" ,"BD5J" ,"CAAir_BAF" ,"CAAir_BAF_CH_47F" ,"CATracked_BAF" ,"CATracked_W_BAF" ,"RHSound" ,"RWS_AK47" ,"RWS_AK74" ,"RWS_Enfield" ,"RWS_Handgreande" ,"RWS_KSVK" ,"RWS_M1014" ,"RWS_M14" ,"RWS_M1911" ,"RWS_M203" ,"RWS_M2HMG" ,"RWS_M32" ,"RWS_M4A1" ,"RWS_M9" ,"RWS_M9SD" ,"RWS_MP5" ,"RWS_MP5SD" ,"RWS_PM" ,"RWS_S8" ,"RWS_Soniccracks" ,"RWS_SVD" ,"CA_CommunityConfigurationProject_E" ,"CA_CommunityConfigurationProject_E_AI_DisabledATLauncherUseAgainstInfantry" ,"CA_CommunityConfigurationProject_E_AI_FixedSidewinderLaucherRangeProbabilities" ,"CA_CommunityConfigurationProject_E_AI_ImprovedAIDispersionCoefForCoaxMGs" ,"CA_CommunityConfigurationProject_E_AI_ImprovedIglaPodAAMissileUse" ,"CA_CommunityConfigurationProject_E_AI_ImprovedT90ATMissileUse" ,"CA_CommunityConfigurationProject_E_AI_ImprovedTankGunnerHEAndATAmmoUse" ,"CA_CommunityConfigurationProject_E_AI_ImprovedTunguskaAAMissileUse" ,"CA_CommunityConfigurationProject_E_AI_MadeAINotEngageBTR40WithRifles" ,"CA_CommunityConfigurationProject_E_AI_MadeAINotEngageSCUDWithRifles" ,"CA_CommunityConfigurationProject_E_AI_MadeAINotEngageVodnikWithRifles" ,"CA_CommunityConfigurationProject_E_AI_MadeAIUseCTWSVsInfantry" ,"CA_CommunityConfigurationProject_E_AI_MadeAIUseGrenadeLaunchers" ,"CA_CommunityConfigurationProject_E_AI_MadeAIUseMGOfStrykerMGS" ,"CA_CommunityConfigurationProject_E_AI_MadeAKS74UNKobraFullySilenced" ,"CA_CommunityConfigurationProject_E_AI_MadeTankGunnersUseATAndHEAmmo" ,"CA_CommunityConfigurationProject_E_AI_MadeTankGunnersUseATAndHEAmmo_Muzzle" ,"CA_CommunityConfigurationProject_E_Editor_AddedAllWeaponSlotsInfantryVariants" ,"CA_CommunityConfigurationProject_E_Editor_AddedInvisibleZoneProtection" ,"CA_CommunityConfigurationProject_E_Editor_AddedLargeWeaponVariants" ,"CA_CommunityConfigurationProject_E_Editor_AdditionalGroups" ,"CA_CommunityConfigurationProject_E_Editor_AdditionalMarkerColors" ,"CA_CommunityConfigurationProject_E_Editor_MadeAllBackpacksAvailableEmpty" ,"CA_CommunityConfigurationProject_E_Editor_MadeOldTractorAvailable" ,"CA_CommunityConfigurationProject_E_Editor_NoBlackAreaOutsideMap" ,"CA_CommunityConfigurationProject_E_Editor_SetMissingMusicTrackDuration" ,"CA_CommunityConfigurationProject_E_Gameplay_ActualModelsOfWeaponMagazinesVisibleOnTheGround" ,"CA_CommunityConfigurationProject_E_Gameplay_AddedMFDForAH1Z" ,"CA_CommunityConfigurationProject_E_Gameplay_AddedMissingFlaresToChoppers" ,"CA_CommunityConfigurationProject_E_Gameplay_AddedMissingSmokeLaunchersToHQVehicles" ,"CA_CommunityConfigurationProject_E_Gameplay_AddedMissingSmokeLaunchersToVodnikBPPU" ,"CA_CommunityConfigurationProject_E_Gameplay_AddedShortLockDelayForNLAW" ,"CA_CommunityConfigurationProject_Gameplay_AddedSteppedOpticsToMi24" ,"CA_CommunityConfigurationProject_E_Gameplay_AddedThermalViewToA2AirVehicles" ,"CA_CommunityConfigurationProject_E_Gameplay_AddedThermalViewToA2GroundVehicles" ,"CA_CommunityConfigurationProject_E_Gameplay_AdditionalLauncherRocketsWithEnlargedSize" ,"CA_CommunityConfigurationProject_Gameplay_ChangedCountermeasuresAmmoToChaffForSu25" ,"CA_CommunityConfigurationProject_Gameplay_ChangedThermalDisplaySystem" ,"CA_CommunityConfigurationProject_E_Gameplay_CorrectedDriverViewInBTR60" ,"CA_CommunityConfigurationProject_E_Gameplay_CorrectedInfantryMovementSpeed" ,"CA_CommunityConfigurationProject_E_Gameplay_CorrectedMetisViewModes" ,"CA_CommunityConfigurationProject_E_Gameplay_DisabledGRADMLRSLocking" ,"CA_CommunityConfigurationProject_E_Gameplay_DisabledLockingForAllNonGuidedWeaponsWithAutoGuideATDisabled" ,"CA_CommunityConfigurationProject_E_Gameplay_DisabledOpticsViewInGRAD" ,"CA_CommunityConfigurationProject_E_Gameplay_DisabledOpticsViewInMLRS" ,"CA_CommunityConfigurationProject_E_Gameplay_DisabledSPG9Locking" ,"CA_CommunityConfigurationProject_E_Gameplay_EnabledAlwaysLockingForCRV7_PG" ,"CA_CommunityConfigurationProject_E_Gameplay_EnabledBackPackCarryAbilityForA2Infantry" ,"CA_CommunityConfigurationProject_E_Gameplay_EnabledTurnOutForTanks" ,"CA_CommunityConfigurationProject_E_Gameplay_FasterHandGrenadeThrowWithPistol" ,"CA_CommunityConfigurationProject_E_Gameplay_FasterStepOver" ,"CA_CommunityConfigurationProject_E_Gameplay_FixedAT1Model" ,"CA_CommunityConfigurationProject_E_Gameplay_FixedBizonLightFlashOnFiring" ,"CA_CommunityConfigurationProject_E_Gameplay_FixedEarthenRampartDestruction" ,"CA_CommunityConfigurationProject_E_Gameplay_FixedFoldingChair" ,"CA_CommunityConfigurationProject_E_Gameplay_FixedM242AmmoStats" ,"CA_CommunityConfigurationProject_E_Gameplay_FixedMissileSmoke" ,"CA_CommunityConfigurationProject_E_Gameplay_FixedMissileSpeeds" ,"CA_CommunityConfigurationProject_E_Gameplay_FixedPickupGunnerOpticsView" ,"CA_CommunityConfigurationProject_E_Gameplay_FixedSPG9ReloadSpeed" ,"CA_CommunityConfigurationProject_E_Gameplay_FixedTooHighGetOutTrucks" ,"CA_CommunityConfigurationProject_E_Gameplay_FixedTransportCapabilitiesShipsAndBoats" ,"CA_CommunityConfigurationProject_E_Gameplay_GetInOutAnimationsforM1A2Loader" ,"CA_CommunityConfigurationProject_E_Gameplay_ImprovedSizeOfCompassAndGPS" ,"CA_CommunityConfigurationProject_E_Gameplay_LWTSCameraForTUSKLoader" ,"CA_CommunityConfigurationProject_E_Gameplay_MadeBicycleNotLockable" ,"CA_CommunityConfigurationProject_E_Gameplay_MadeM1A2TUSKLoaderAbleToTurnIn" ,"CA_CommunityConfigurationProject_E_Gameplay_MadeMissileSteerableForBMP3AndT90" ,"CA_CommunityConfigurationProject_E_Gameplay_MadePilotsControlUnguidedRockets" ,"CA_CommunityConfigurationProject_E_Gameplay_MoreSluggishATV" ,"CA_CommunityConfigurationProject_E_Gameplay_RealisticKa52GunMovementLimits" ,"CA_CommunityConfigurationProject_E_Gameplay_ReducedAK74andRPKRecoil" ,"CA_CommunityConfigurationProject_E_Gameplay_ReducedGrenadeDeflection" ,"CA_CommunityConfigurationProject_E_Gameplay_RemovedAirlockOfVikhrMissile" ,"CA_CommunityConfigurationProject_E_Gameplay_RemovedTargetsDisplayFromA10AndAV8B" ,"CA_CommunityConfigurationProject_E_Gameplay_RemovedVintorezLightFlashOnFiring" ,"CA_CommunityConfigurationProject_E_Gameplay_WorkingFreelookWhenTurnedOut" ,"CA_CommunityConfigurationProject_E_Settings_EnabledAutoGuideATForAllDifficultyLevels" ,"CA_CommunityConfigurationProject_E_Sound_FixedAliceEmptydoor" ,"CA_CommunityConfigurationProject_E_Sound_FixedCarNoiseSound" ,"CA_CommunityConfigurationProject_E_Sound_FixedCTWS" ,"CA_CommunityConfigurationProject_E_Sound_FixedGetInGetOutSoundOfSedan" ,"CA_CommunityConfigurationProject_E_Sound_FixedMH60SDammageSound" ,"CA_CommunityConfigurationProject_E_Sound_FixedMissingEffectsNames" ,"CA_CommunityConfigurationProject_E_Stringtable_FixedNLAWRangeDescription" ,"CA_CommunityConfigurationProject_E_Stringtable_FixedWeaponNames" ,"CA_CommunityConfigurationProject_E_Visual_AdditionalBombMagazines" ,"CA_CommunityConfigurationProject_E_Visual_CTWSMuzzleFlashAtWrongPosition" ,"CA_CommunityConfigurationProject_E_Visual_FixedMi17Mi8UnitTypeIcon" ,"CA_CommunityConfigurationProject_E_Visual_FixedPickupAndOffroadDriverHUD" ,"CA_CommunityConfigurationProject_E_Visual_FixedPylonPositionsAH64" ,"CA_CommunityConfigurationProject_E_Visual_FixedPylonPositionsMi24" ,"CA_CommunityConfigurationProject_E_Visual_FixedUnitTypeIconsBasedOnWeaponry" ,"CA_CommunityConfigurationProject_E_Visual_ReducedMissileSmoke" ,"CorePatch" ,"CorePatch_AdditionalMarkers" ,"CorePatch_AdditionalObjects" ,"CorePatch_An2HiddenSelections" ,"CorePatch_Armory_Fix" ,"CorePatch_AT1" ,"CorePatch_CCP_62628" ,"CorePatch_CCP_63107" ,"CorePatch_CCP_66695" ,"CorePatch_CCP_67122" ,"CorePatch_CCP_67310" ,"CorePatch_CCP_67317" ,"CorePatch_CCP_67330_OA" ,"CorePatch_CCP_67406" ,"CorePatch_CCP_67535" ,"CorePatch_CCP_67587" ,"CorePatch_CCP_67651" ,"CorePatch_CCP_67652" ,"CorePatch_CCP_67705" ,"CorePatch_CCP_67739" ,"CorePatch_CCP_67740" ,"CorePatch_CCP_67741" ,"CorePatch_CCP_67747" ,"CorePatch_CCP_67951_OA" ,"CorePatch_CCP_68114" ,"CorePatch_CCP_68220" ,"CorePatch_CCP_68351" ,"CorePatch_CCP_69133" ,"CorePatch_CCP_69138" ,"CorePatch_CCP_69186" ,"CorePatch_CCP_69249" ,"CorePatch_CCP_70342_71143" ,"CorePatch_CCP_70400_Fix" ,"CorePatch_CCP_70490_Fix" ,"CorePatch_CCP_71037" ,"CorePatch_CCP_71142_CIT_13602_25047" ,"CorePatch_CCP_71144_Fix" ,"CorePatch_Change3rdPersonViewWheeledAPC_Fix" ,"CorePatch_ChangedDTMagazineAmmo" ,"CorePatch_ChangedGetInOutActions" ,"CorePatch_CIT_11696" ,"CorePatch_CIT_11850" ,"CorePatch_CIT_13131" ,"CorePatch_CIT_14162" ,"CorePatch_CIT_14421" ,"CorePatch_CIT_14483" ,"CorePatch_CIT_16115" ,"CorePatch_CIT_19347" ,"CorePatch_CIT_22551" ,"CorePatch_CIT_22991_22992_22994_22996_22998" ,"CorePatch_CIT_22999" ,"CorePatch_CIT_23000" ,"CorePatch_CIT_23002_23003" ,"CorePatch_CIT_23378" ,"CorePatch_CIT_23450" ,"CorePatch_CIT_23451" ,"CorePatch_CIT_24651" ,"CorePatch_CIT_24657" ,"CorePatch_CIT_24659" ,"CorePatch_CIT_24661_24662_24663" ,"CorePatch_CIT_24664" ,"CorePatch_CIT_24666_24668" ,"CorePatch_CIT_24669" ,"CorePatch_CIT_24670" ,"CorePatch_CIT_24671" ,"CorePatch_CIT_24672" ,"CorePatch_CIT_24693_24694" ,"CorePatch_CIT_24719" ,"CorePatch_CIT_24764" ,"CorePatch_CIT_24780" ,"CorePatch_CIT_24817_24839_24841_24842" ,"CorePatch_CIT_24887" ,"CorePatch_CIT_24902" ,"CorePatch_CIT_24957" ,"CorePatch_CIT_25048" ,"CorePatch_CIT_25488" ,"CorePatch_CIT_25593" ,"CorePatch_CIT_26237" ,"CorePatch_CIT_27347" ,"CorePatch_CIT_27550" ,"CorePatch_CIT_2793" ,"CorePatch_CIT_28047" ,"CorePatch_CIT_30970" ,"CorePatch_CIT_70371" ,"CorePatch_CIT_70648" ,"CorePatch_CIT_71737" ,"CorePatch_DeletedBTR40DriverOpticsModel" ,"CorePatch_Dubbing_Fix" ,"CorePatch_FIS_Fix" ,"CorePatch_GC_Fix" ,"CorePatch_Javelin_Fix" ,"CorePatch_LightVersionsOfUSSoldiers" ,"CorePatch_MotorcycleTransportMaxWeapons" ,"CorePatch_NoDisassemblyVersionsOfBAFStatics" ,"CorePatch_NoPierDestruction" ,"CorePatch_Reflectors" ,"CorePatch_RU_Soldier_AT" ,"CorePatch_Shapur_Intro_Fix" ,"CorePatch_SUV" ,"CorePatch_Turrets" ,"CorePatch_TweakedROF" ,"CorePatch_UI" ,"CorePatch_Zargabad_Intro_Fix","m16a2","b1b","gnt_b52","gnt_weapons","wop_gui","wop_pilot","CALanguage_ACR", "CALanguage_missions_ACR", "CA_DubbingRadio_ACR", "CA_Missions_ACR", "CA_Modules_ACR_Functions", "CA_Modules_ACR", "Woodland_ACR", "Bootcamp_ACR", "CA_ACR", "CAMisc_ACR_3DMarkers", "CAMisc_ACR", "Mountains_ACR", "CaWheeled_ACR_RM70", "CAMisc_ACR_Helpers", "CAMisc_ACR_Dog", "CAMisc_ACR_Container", "CAMisc_ACR_PBX", "CAMisc_ACR_ScaffoldingSmall", "CAMisc_ACR_Shooting_range", "CAMisc_ACR_Sign_Mines", "CAMisc_ACR_Targets", "CAMisc_ACR_Targets_InvisibleTarget", "CAMisc_ACR_TestSphere", "CAWEAPONS_ACR", "CAWeapons_ACR_CZ805", "CAWeapons_ACR_LRTV", "CAWeapons_ACR_RBS70", "CAWeapons_ACR_UK59", "CAWheeled_ACR", "CAWheeled_ACR_Dingo", "CAWheeled_ACR_HMMWV", "CAWheeled_ACR_LR", "CAWheeled_ACR_Octavia", "CAWheeled_ACR_Pandur", "CAWheeled_ACR_T810", "CAAir_ACR", "CAAir_ACR_L159", "CAAir_ACR_L39", "CAAir_ACR_Mi24", "CACharacters_ACR", "CATracked_ACR", "CATracked_ACR_BVP1", "CATracked_ACR_T72M4CZ", "CALanguage_missions_ACR", "CALanguage_ACR", "CA_Modules_ACR_Functions", "CA_Modules_ACR", "CA_Missions_ACR", "CA_DubbingRadio_ACR", "Woodland_ACR", "Bootcamp_ACR", "CA_ACR", "CaWheeled_ACR_RM70", "Mountains_ACR", "CAMisc_ACR_3DMarkers", "CAMisc_ACR", "CAMisc_ACR_Container", "CAMisc_ACR_Dog", "CAMisc_ACR_Helpers", "CAMisc_ACR_PBX", "CAMisc_ACR_ScaffoldingSmall", "CAMisc_ACR_Shooting_range", "CAMisc_ACR_Sign_Mines", "CAMisc_ACR_Targets", "CAMisc_ACR_Targets_InvisibleTarget", "CAMisc_ACR_TestSphere", "CAWEAPONS_ACR", "CAWeapons_ACR_CZ805", "CAWeapons_ACR_LRTV", "CAWeapons_ACR_RBS70", "CAWeapons_ACR_UK59", "CAWheeled_ACR", "CAWheeled_ACR_Dingo", "CAWheeled_ACR_HMMWV", "CAWheeled_ACR_LR", "CAWheeled_ACR_Octavia", "CAWheeled_ACR_T810", "CAWheeled_ACR_Pandur", "CAAir_ACR", "CAAir_ACR_L39", "CAAir_ACR_L159", "CAAir_ACR_Mi24", "CATracked_ACR", "CACharacters_ACR", "CATracked_ACR_BVP1", "CATracked_ACR_T72M4CZ", "GIX_AddFlares", "gntweapons", "WOP_Pilots", "lancer_right", "lancer_left", "b1b_MK82_86095", "GNT_B52", "CorePatch_Ammo", "CorePatch_AntiProne", "CorePatch_CCP_65710", "CorePatch_CCP_66995", "CorePatch_CCP_67330", "CorePatch_CCP_67380", "CorePatch_CCP_67544", "CorePatch_CCP_68103", "CorePatch_CCP_70400", "CorePatch_CCP_70490", "CorePatch_CCP_70799", "CorePatch_CCP_70991", "CorePatch_CCP_71144", "CorePatch_Characters", "CorePatch_CIT_13602_25047", "CorePatch_CIT_13857", "CorePatch_CIT_14888", "CorePatch_CIT_1694", "CorePatch_CIT_19295", "CorePatch_CIT_22990", "CorePatch_CIT_23002", "CorePatch_CIT_23003", "CorePatch_CIT_23501", "CorePatch_CIT_24668", "CorePatch_CIT_24772", "CorePatch_CIT_24839", "CorePatch_CIT_24841", "CorePatch_CIT_24842", "CorePatch_CIT_24913", "CorePatch_CIT_25026", "CorePatch_CIT_27790", "CorePatch_CIT_27791", "CorePatch_CIT_27792", "CorePatch_CIT_27793", "CorePatch_CIT_27794", "CorePatch_CIT_38229", "CorePatch_CIT_39474", "CorePatch_CIT_39580", "CorePatch_CIT_39785", "CorePatch_CIT_39786", "CorePatch_CIT_39865", "CorePatch_CIT_40393", "CorePatch_CIT_43148", "CorePatch_CIT_46056", "CorePatch_CIT_5342", "CorePatch_CIT_5343", "CorePatch_CIT_62100", "CorePatch_CIT_66136", "CorePatch_CIT_67715", "CorePatch_CIT_70197", "CorePatch_CIT_70470", "CorePatch_CIT_71262", "CorePatch_CIT_71282", "CorePatch_CIT_7147", "CorePatch_CIT_72718", "CorePatch_Compatibility", "CorePatch_CIT_8198", "CorePatch_GAU22", "CorePatch_LaserTargetCSide", "CorePatch_Magazines", "CorePatch_Mi24", "CorePatch_Mi8", "CorePatch_NoDestructionDamageToSomeBuildings", "CorePatch_UralTransportMagazines", "CorePatch_Vehicles", "CorePatch_Weapons", "CorePatch_CIT_17245", "CorePatch_Everything"]; 


_binConfigPatches = configFile >> "CfgPatches";
for "_i" from 0 to count (_binConfigPatches)-1 do {
    _patchEntry = _binConfigPatches select _i;
    if (isClass _patchEntry) then {
        if (!((configName _patchEntry) in _patches)) exitWith {
		 ["ALL",[getPlayerUID player,name player,format ["You are being kicked for a Unkown Mod: %1",(configName _patchEntry)]],"OwlEye_kick",true,true]call network_MPExec;
        };
    };
};


/*Removed well knows script injection*/
inGameUISetEventHandler ["PrevAction","false"];
inGameUISetEventHandler ["NextAction","false"];
inGameUISetEventHandler ["Action","false"];