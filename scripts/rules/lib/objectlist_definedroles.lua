-- normally, I would only restrict items belonging to the player's race
-- however, in this case I want every race's ships restricted since there's a chance a player might get some motherships from other races (i.e. Defined Roles' capital role)
-- unfortunately, the way HWU is set up, a subsystem can appear in multiple races, resulting in a possible conflict
-- this is also why there are so many "luaplayer 334" subsystem errors in HW2.log
--
-- the AI likely can't play this game mode properly
--

RolesNumber = 3		-- the number of different roles (must be the same for all races)
RolesCapital = 1	-- affects RU transfer, so set this to a job that can spend RUs. if noone on a team selects this role, then everyone gets this job's benefits
RolesResource = 2	-- affects AI resource collection
RolesFrigate = 2	-- affects AI demand values
RolesCorvette = 3	-- affects AI demand values
RolesFighter = 3	-- affects AI demand values

-- List of jobtypes and corresponding ship/research/subsystem classes they control.
RolesTable =
{
	{
		name = "capital",
		label = "Capital/Production",
		techclasses =
		{
			"mothership",
			"cruiser",
			"carrier",
			"destroyer",
			"noncombat",
		},
	},
	{
		name = "frigate",
		label = "Frigate/Platform",
		techclasses =
		{
			"frigate",
			"platform",
			"resource",
		},
	},
	{
		name = "fighter",
		label = "Fighter/Corvette",
		techclasses =
		{
			"fighter",
			"corvette",
		},
	},
}
