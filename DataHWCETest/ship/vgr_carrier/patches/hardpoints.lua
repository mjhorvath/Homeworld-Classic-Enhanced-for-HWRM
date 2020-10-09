Patch_Priority = 3.0
Patch_Exclusive = 0
Patch_Ops = {
  hp_0 = {        -- force the joints to understand change...
    root	= "Root",
    name	= "NavLightLimit1",
    pos		= { 0, 127.1599, 150.0582 },
    rot		= { 0, 0, 0 },
    axis	= { 0, 0, 0 },
  },
  hp_1 = {
    root	= "Root",
    name	= "HardPoint_Production2_Position",
    pos		= { -39.27179, -73.4791, -105.6596 },
    rot		= { rad(45), rad(45), rad(45) },
    axis	= { 0, 0, 0 },
  },
  hp_2 = {
    root	= "Root",
    name	= "HardPoint_Production3_Position",
    pos		= { 39.27179, -73.4791, -105.6596 },
    rot		= { rad(45), rad(45), rad(45) },
    axis	= { 0, 0, 0 },
  },

--------------------------------------------------------------------------------
  hp_3 = {
    root	= "HardPoint_Production2_Position",
    name	= "HardPoint_Production2_Rest",
    pos		= { 0, 0, 10 },
    rot		= { 0, 0, 0 },
    axis	= { 0, 0, 0 },
  },
  hp_4 = {
    root	= "HardPoint_Production2_Position",
    name	= "HardPoint_Production2_Direction",
    pos		= { 0, 10, 0 },
    rot		= { 0, 0, 0 },
    axis	= { 0, 0, 0 },
  },

--------------------------------------------------------------------------------
  hp_5 = {
    root	= "HardPoint_Production3_Position",
    name	= "HardPoint_Production3_Rest",
    pos		= { 0, 0, 10 },
    rot		= { 0, 0, 0 },
    axis	= { 0, 0, 0 },
  },
  hp_6 = {
    root	= "HardPoint_Production3_Position",
    name	= "HardPoint_Production3_Direction",
    pos		= { 0, 10, 0 },
    rot		= { 0, 0, 0 },
    axis	= { 0, 0, 0 },
  },
}
