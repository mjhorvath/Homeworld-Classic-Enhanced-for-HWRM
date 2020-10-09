-- the RacesOrder table determines the order in which the races appear in the frontend menu
-- otherwise they would not appear in any particular order at all
RacesNumber = 4
RacesList =
{
	"hiigaran_hwce",
	"vaygr_hwce",
	"kushan_hwce",
	"taiidan_hwce",
}
RacesListCorrectName =
{
	hiigaran_hwce = "Hiigaran",
	vaygr_hwce = "Vaygr",
	kushan_hwce = "Kushan",
	taiidan_hwce = "Taiidan",
}

ResourceControllersList =
{
	hiigaran_hwce =
	{
		"Hgn_ResourceController",
	},
	vaygr_hwce =
	{
		"Vgr_ResourceController",
	},
	kushan_hwce =
	{
		"Kus_ResourceController",
	},
	taiidan_hwce =
	{
		"Tai_ResourceController",
	},
}

-- List of unlikely player-owned ships that should not get counted when determining where to place a crate. (E.g., megaliths.)
CrateExclusions =
{
	"ben_bentusiexchange",
	"ben_cargobarge",
	"borgcone",
	"der_carrier",
	"der_carriernew",
	"der_crate",
	"der_dddfrigate",
	"der_dddfrigatenew",
	"der_fragmentpanel0a",
	"der_fragmentpanel0b",
	"der_fragmentpanel0c",
	"der_fragmentpanel1",
	"der_fragmentpanel2",
	"der_fragmentpanel3",
	"der_fragmentpanel3_hw2",
	"der_fragmentstrut",
	"der_ghostship",
	"der_heavycorvette",
	"der_heavycruiser",
	"der_junk0_antenna",
	"der_junk0_antenna_hw2",
	"der_junk0_fin1",
	"der_junk0_fin1_hw2",
	"der_junk0_fin2",
	"der_junk0_fin2_hw2",
	"der_junk0_gunammo",
	"der_junk0_panel",
	"der_junk0_panel_hw2",
	"der_junk0_sensors",
	"der_junk0_sensors_hw2",
	"der_junk1_parta",
	"der_junk1_parta_hw2",
	"der_junk1_partb",
	"der_junk1_partb_hw2",
	"der_junk1_shell",
	"der_junk1_shell_hw2",
	"der_junk1_strut",
	"der_junk1_strut_hw2",
	"der_junk2_panela",
	"der_junk2_panela_hw2",
	"der_junk2_panelb",
	"der_junk2_panelb_hw2",
	"der_junk2_panelc",
	"der_junk2_panelc_hw2",
	"der_junk2_paneld",
	"der_junk2_paneld_hw2",
	"der_junk2_shipwreck",
	"der_junk3_boiler",
	"der_junk3_boilercasing",
	"der_lifeboat",
	"der_lightcorvette",
	"der_lightcorvettenew",
	"der_minelayercorvette",
	"der_multiguncorvette",
	"der_multiguncorvettenew",
	"der_prisonshipnew",
	"der_prisonshipold",
	"der_repaircorvette",
	"der_scaffold",
	"der_scaffoldfingera_scarred",
	"der_scaffoldfingerb_scarred",
	"der_scaffold_scarred",
	"der_shipwreck",
	"der_supportfrigate",
	"der_supportfrigatenew",
	"junk_autogunl",
	"junk_autoguns",
	"junk_hyperspacegate",
	"junk_junkyarddog",
	"junk_junkyardoffice",
	"kad_advancedswarmer",
	"kad_fuelpod",
	"kad_multibeamfrigate",
	"kad_p2mothership",
	"kad_swarmer",
	"kpr_attackdroid",
	"kpr_destroyer",
	"kpr_destroyerm10",
	"kpr_mover",
	"kpr_mover_capture",
	"kpr_mover_salvage",
	"kpr_sajuuk",
	"kpr_sajuuk_nosensors",
	"meg_asteroid",
	"meg_asteroidmp",
	"meg_asteroid_nosubs",
	"meg_balcoragate",
	"meg_bentus",
	"meg_bentus_ruined",
	"meg_bentus_ruins_core_1",
	"meg_bentus_ruins_core_2",
	"meg_bentus_ruins_core_3",
	"meg_bentus_ruin_1",
	"meg_bentus_ruin_10",
	"meg_bentus_ruin_11",
	"meg_bentus_ruin_2",
	"meg_bentus_ruin_3",
	"meg_bentus_ruin_4",
	"meg_bentus_ruin_5",
	"meg_bentus_ruin_6",
	"meg_bentus_ruin_7",
	"meg_bentus_ruin_8",
	"meg_bentus_ruin_9",
	"meg_bigred",
	"meg_chimera",
	"meg_crate_hw1container",
	"meg_crate_hw2container",
	"meg_dreadnaughtberth",
	"meg_foundry",
	"meg_foundrydebris_chunk1",
	"meg_foundrydebris_chunk2",
	"meg_foundrydebris_chunk3",
	"meg_foundrydebris_chunk4",
	"meg_foundrydebris_flake1",
	"meg_foundrydebris_flake2",
	"meg_foundrydebris_flake3",
	"meg_foundrydebris_flake4",
	"meg_gehenna_1",
	"meg_gehenna_2",
	"meg_gehenna_3",
	"meg_gehenna_4",
	"meg_gehenna_5",
	"meg_gehenna_6",
	"meg_gehenna_7",
	"meg_misslefrigate",
	"meg_progenitorpowermodule",
	"meg_progenitorpowertrigger",
	"meg_progenitorpowertrigger_noui",
	"meg_relic_rugenerator",
	"meg_sajhulknose",
	"meg_sajhulknose_ui",
	"meg_sajhulkpanels",
	"meg_sajhulkpanels_ui",
	"meg_sajhulkturret",
	"meg_salvagecollector",
	"meg_tanis",
	"meg_tanisstructure_medium",
	"meg_tanisstructure_medium2",
	"meg_veildebris_bit1",
	"meg_veildebris_bit10",
	"meg_veildebris_bit11",
	"meg_veildebris_bit12",
	"meg_veildebris_bit13",
	"meg_veildebris_bit14",
	"meg_veildebris_bit15",
	"meg_veildebris_bit2",
	"meg_veildebris_bit3",
	"meg_veildebris_bit4",
	"meg_veildebris_bit5",
	"meg_veildebris_bit6",
	"meg_veildebris_bit7",
	"meg_veildebris_bit8",
	"meg_veildebris_bit9",
	"meg_veildebris_chunk1",
	"meg_veildebris_chunk1_nd",
	"meg_veildebris_chunk2",
	"meg_veildebris_chunk2_nd",
	"meg_veildebris_chunk3",
	"meg_veildebris_chunk3_nd",
	"meg_veildebris_chunk4",
	"meg_veildebris_chunk4_nd",
	"meg_veildebris_chunk5",
	"meg_veildebris_chunk5_nd",
	"meg_veildebris_chunk_lighthouse",
	"meg_veildebris_flake1",
	"meg_veildebris_flake10",
	"meg_veildebris_flake2",
	"meg_veildebris_flake3",
	"meg_veildebris_flake4",
	"meg_veildebris_flake5",
	"meg_veildebris_flake6",
	"meg_veildebris_flake7",
	"meg_veildebris_flake8",
	"meg_veildebris_flake9",
	"misc_asteroidhuge",
	"misc_asteroidlarge",
	"misc_t-matmegaship",
	"neu_soundtest",
	"neu_transport",
	"nis_galaxymap",
	"special_eventsimulator",
	"special_splitter",
	"special_unittestmap",
	"sp_tanker",
	"sp_tanker2",
	"sp_tanker3",
	"sp_tanker4",
	"sp_tanker5",
	"sp_tanker6",
	"test_mesh",
	"tes_twosidetest",
	"tur_fighter",
	"tur_ionarrayfrigate",
	"tur_missilecorvette",
	"tur_p1mothership",
	"tur_standardcorvette",
}


--==============================================================================
-- BACKGROUND MUSIC
--

-- the playlist for the random music script
TracksNumber = 38
TracksTable =
{
	-- title, filepath, playing time (s),							-- default time (s)
	-- HW2
	{"Ambient No.1", "ambient\\amb_01", 628,},						-- 157
	{"Ambient No.2", "ambient\\amb_02", 660,},						-- 110
	{"Ambient No.3", "ambient\\amb_03", 620,},						-- 155
	{"Ambient No.4", "ambient\\amb_04", 660,},						-- 110
	{"Ambient No.5", "ambient\\amb_05", 645,},						-- 129
	{"Ambient No.6", "ambient\\amb_06", 618,},						-- 103
	{"Ambient No.7", "ambient\\amb_07", 620,},						-- 124
	{"Ambient No.8", "ambient\\amb_08", 705,},						-- 141
	{"Ambient No.12", "ambient\\amb_12", 628,},						-- 108
	{"Ambient No.13", "ambient\\amb_13", 684,},						-- 114
	{"Ambient No.14", "ambient\\amb_14", 725,},						-- 145
	{"Battle No.1", "battle\\battle_01", 552,},						-- 276
	{"Battle No.4", "battle\\battle_04", 678,},						-- 226
	{"Battle No.4, Alternate", "battle\\battle_04_alt", 720,},				-- 180
	{"Battle No.6", "battle\\battle_06", 764,},						-- 191
	{"Battle - Keeper", "battle\\battle_keeper", 708,},					-- 177
	{"Battle - Movers", "battle\\battle_movers", 632,},					-- 158
	{"Battle - Planet Killers", "battle\\battle_planetkillers", 748,},			-- 187
	{"Battle - Sajuuk", "battle\\battle_sajuuk", 644,},					-- 161
	{"Battle - Bentus Arrival", "battle\\bentus_arrival", 640,},				-- 64
	-- HW1
	{"Kharak (First Steps)", "ambient\\a01_mission1", 555,},				-- 185
	{"Great Wasteland", "ambient\\a02_mission2and4", 595,},					-- 119
	{"Adagio For Strings", "ambient\\a03_mission3and16", 698,},				-- 349
	{"Garden View", "ambient\\a04_mission5", 640,},						-- 128
	{"Diamond Shoals (Into Heart of Galaxy)", "ambient\\a05_mission6and12", 676,},		-- 169
	{"Garden of Kadesh", "ambient\\a06_mission7and8", 650,},				-- 130
	{"Whispering Ocean", "ambient\\a07_mission9", 575,},					-- 115
	{"Heavy Gravitation", "ambient\\a08_mission10", 564,},					-- 94
	{"Final Throes", "ambient\\a09_mission11and15", 580,},					-- 116
	{"Ship Graveyard", "ambient\\a11_mission13", 604,},					-- 151
	{"Bridge of Sighs", "ambient\\a12_mission14", 620,},					-- 155
	{"Tutorial", "ambient\\tutorial", 717,},						-- 239
	{"The Beginning of The End", "battle\\a01_mission1and16", 744,},			-- 186
	{"Tears of Karan", "battle\\a03_mission3", 698,},					-- 349
	{"Turanic Raiders Battle Long", "battle\\b01_turanicraiderslong", 711,},		-- 237
	{"Turanic Raiders Battle Music Short", "battle\\b02_turanicraidersshort", 711,},	-- 237
	{"Swarmer Battle Music", "battle\\b03_swarmers", 592,},					-- 296
	{"Imperial Battle Music", "battle\\b04_evilempire", 594,},				-- 198
}
