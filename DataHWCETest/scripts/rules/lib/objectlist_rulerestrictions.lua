-- Research, ships & modules restricted by individual gamerules
RestrictedBy =
{
	-- see "restrict.lua"
	-- make sure all variants are listed
	MPRestrict =
	{
		hiigaran_hwce =
		{
			build = {},
			research =
			{
			},
		},
		vaygr_hwce =
		{
			build = {},
			research =
			{
			},
		},
		kushan_hwce =
		{
			build = {},
			research = {},
		},
		taiidan_hwce =
		{
			build = {},
			research = {},
		},
	},
	-- need to restrict these for human players since they are only meant to be used by the AI
	-- make sure all variants are listed
	HumanPlayer =
	{
		hiigaran_hwce =
		{
			build = {},
			research =
			{
			},
		},
		vaygr_hwce =
		{
			build = {},
			research =
			{
			},
		},
		kushan_hwce =
		{
			build = {},
			research =
			{
			},
		},
		taiidan_hwce =
		{
			build = {},
			research =
			{
			},
		},
	},
	-- "Start With" is set to "Mothership".
	-- this is the "normal" mode
	StartWithMothership =
	{
		hiigaran_hwce =
		{
			build =
			{
			},
			research = {},
		},
		vaygr_hwce =
		{
			build =
			{
			},
			research = {},
		},
		kushan_hwce =
		{
			build =
			{
			},
			research = {},
		},
		taiidan_hwce =
		{
			build =
			{
			},
			research = {},
		},
	},
	-- "Start With" is set to "HW1 Map Default".
	-- still need to decide how I want to handle this gamerule
	-- maybe create a routine to swap all unsuffixed "from the map" ships with suffixed versions while still obeying the other gamerules
	-- for the time being I am simply restricting all suffixed ships here
	StartWithMapDefault =
	{
		hiigaran_hwce =
		{
			build = {},
			research = {},
		},
		vaygr_hwce =
		{
			build = {},
			research = {}
		},
		kushan_hwce =
		{
			build = {},
			research = {},
		},
		taiidan_hwce =
		{
			build = {},
			research = {},
		},
	},
	-- "Start With" is set to "Carrier Only".
	-- this could be called the "anti-capital" mode since the construction and upgrading of capital ships is restricted here
	-- should the building or capture of capital ships really be restricted?
	-- should every possibility of capital ships (except the carrier you start with) appearing in this mode be removed?
	StartWithCarrierOnly =
	{
		hiigaran_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		vaygr_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		kushan_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		taiidan_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
	},
	-- "Research" is set to "Off".
	-- should maybe also remove dependency on research modules from research items
	-- should maybe create innate indestructible research subsystems on each capital ship instead of what I am currently doing
	ResearchOff =
	{
		hiigaran_hwce =
		{
			build =
			{
			},
			research = {},
		},
		vaygr_hwce =
		{
			build =
			{
			},
			research = {},
		},
		kushan_hwce =
		{
			build =
			{
			},
			research = {},
		},
		taiidan_hwce =
		{
			build =
			{
			},
			research = {},
		},
	},
	-- "Research" is set to "On".
	ResearchOn =
	{
		hiigaran_hwce =
		{
			build =
			{
			},
			research = {},
		},
		vaygr_hwce =
		{
			build =
			{
			},
			research = {},
		},
		kushan_hwce =
		{
			build = {},
			research = {},
		},
		taiidan_hwce =
		{
			build = {},
			research = {},
		},
	},
	-- "Hyperspace" is set to "Off".
	HyperspaceOff =
	{
		hiigaran_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		vaygr_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		kushan_hwce =
		{
			build =
			{
			},
			research = {},
		},
		taiidan_hwce =
		{
			build =
			{
			},
			research = {},
		},
	},
	-- "Hyperspace" is set to "On".
	HyperspaceOn =
	{
		hiigaran_hwce =
		{
			build =
			{
			},
			research = {},
		},
		vaygr_hwce =
		{
			build =
			{
			},
			research = {},
		},
		kushan_hwce =
		{
			build =
			{
			},
			research = {},
		},
		taiidan_hwce =
		{
			build =
			{
			},
			research = {},
		},
	},
	-- resourcing is disabled
	ResourceOff =
	{
		hiigaran_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		vaygr_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		kushan_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		taiidan_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
	},
	-- resourcing is enabled
	ResourceOn =
	{
		hiigaran_hwce =
		{
			build =
			{
			},
			research = {},
		},
		vaygr_hwce =
		{
			build =
			{
			},
			research = {},
		},
		kushan_hwce =
		{
			build =
			{
			},
			research = {},
		},
		taiidan_hwce =
		{
			build =
			{
			},
			research = {},
		},
	},
	-- changes are needed based on whether the 'player' is human or AI
	PlayerHuman =
	{
		hiigaran_hwce =
		{
			build = {},
			research =
			{
			},
		},
		vaygr_hwce =
		{
			build = {},
			research =
			{
			},
		},
		kushan_hwce =
		{
			build = {},
			research =
			{
			},
		},
		taiidan_hwce =
		{
			build = {},
			research =
			{
			},
		},
	},
	PlayerComputer =
	{
		hiigaran_hwce =
		{
			build = {},
			research = {}
		},
		vaygr_hwce =
		{
			build = {},
			research = {}
		},
		kushan_hwce =
		{
			build = {},
			research = {}
		},
		taiidan_hwce =
		{
			build = {},
			research = {}
		},
	},
	Misc =
	{
		hiigaran_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		vaygr_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		kushan_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		taiidan_hwce =
		{
			build = {},
			research =
			{
			},
		},
	},
	NonVanilla =
	{
		hiigaran_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		vaygr_hwce =
		{
			build =
			{
				
			},
			research =
			{
			},
		},
		kushan_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		taiidan_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
	},
	-- these unsuffixed ships should not normally appear in the game since there are mod-specific suffixed versions that are meant to take precedence
	-- this list is based on the Players Patch 2.3
	Vanilla =
	{
		hiigaran_hwce =
		{
			build =
			{
			},
			research =
			{
			}
		},
		vaygr_hwce =
		{
			build =
			{
			},
			research =
			{
			}
		},
		kushan_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
		taiidan_hwce =
		{
			build =
			{
			},
			research =
			{
			},
		},
	},
}
