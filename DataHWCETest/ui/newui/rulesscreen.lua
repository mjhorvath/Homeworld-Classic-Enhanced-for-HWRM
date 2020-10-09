-- Displays detailed information about unit caps when the user mouses over the units menu
dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")

function RulesToClone(MyInteger, MyTextA, MyTextB)
	return
	{
		type = "Frame",
		name = "frmNameRules",
		autosize = 1,
		arrangetype = "horiz",
		;
		-- Title to clone
		{
			type = "TextLabel",
			name = "lblRulesA" .. MyInteger,
			autosize = 0,
			ignored = 1,
--			backgroundColor = {random(255),random(255),random(255),128},
			Layout = {
				size_WH = { w = 1, h = STD_LABEL_HEIGHT/2, wr = "px", hr = "scr" },				
				min_WH = { w = 300, wr = "px" },
			},
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				text = MyTextA,
			},
			giveParentMouseInput = 1,
			dropShadow = 1,
			visible = 1,
		},
		{
			type = "TextLabel",
			name = "lblRulesB" .. MyInteger,
			autosize = 0,
			ignored = 1,
--			backgroundColor = {random(255),random(255),random(255),128},
			Layout = {
				size_WH = { w = 1, h = STD_LABEL_HEIGHT/2, wr = "px", hr = "scr" },				
				min_WH = { w = 300, wr = "px" },
			},
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				text = MyTextB,
			},
			giveParentMouseInput = 1,
			dropShadow = 1,
			visible = 1,
		},
	}
end

RulesScreen = {
	maxColor = {255,0,0,255}, -- color for max pop reached
	availColor = {0,255,0,255},	-- color for pop available

	--size = {32, 71, 100, 200},
	autosize = 1,
	RootElementSettings = {

		autosize = 1,
--		backgroundColor          = {255,128,0,255},

		Layout = {	
			pad_LT  = { l = 8, t = 0, lr = "px", tr = "px" },
		},	
		Anchor_Binds = {
			pivotX = "Taskbar_LeftButtonsTopRight",
			pivotY = "Taskbar_LeftButtonsTopRight",
		},
	},

	soundOnShow = "SFX_RecallMenuONOFF",
	soundOnHide = "SFX_RecallMenuONOFF",

	onShow = "UI_SetButtonPressed('NewTaskbar', 'btnRules', 1); UI_HideScreen('BuildQueueMenu'); UI_HideScreen('EventsScreen'); UI_HideScreen('UnitCapInfoPopup'); UI_HideScreen('BountiesScreen'); UI_HideScreen('ProgressScreen'); UI_HideScreen('MusicScreen'); UI_HideScreen('BentusiScreen');",
	onHide = "UI_SetButtonPressed('NewTaskbar', 'btnRules', 0);",

	stylesheet = "HW2StyleSheet",

	-- Flags
	pixelUVCoords = 1, -- Enter pixel coords for texture coords
	arrangetype = "vert",
	clickThrough = 1,
	;
	-- Unit cap item to clone
	{
		type = "Frame",
		name = "frmItemToClone",
		autosize = 1,		
		giveParentMouseInput = 1,
		visible = 1,
		arrangetype = "vert",
		Layout = {
			size_WH = { w = 1, h = 1, wr = "1", hr = "px" },								
		},
		;
		RulesToClone( 0, "", ""),
		RulesToClone( 1, "", ""),
		RulesToClone( 2, "", ""),
		RulesToClone( 3, "", ""),
		RulesToClone( 4, "", ""),
		RulesToClone( 5, "", ""),
		RulesToClone( 6, "", ""),
		RulesToClone( 7, "", ""),
		RulesToClone( 8, "", ""),
		RulesToClone( 9, "", ""),
		RulesToClone(10, "", ""),
		RulesToClone(11, "", ""),
		RulesToClone(12, "", ""),
		RulesToClone(13, "", ""),
		RulesToClone(14, "", ""),
		RulesToClone(15, "", ""),
		RulesToClone(16, "", ""),
		RulesToClone(17, "", ""),
		RulesToClone(18, "", ""),
		RulesToClone(19, "", ""),
		RulesToClone(20, "", ""),
		RulesToClone(21, "", ""),
		RulesToClone(22, "", ""),
		RulesToClone(23, "", ""),
		RulesToClone(24, "", ""),
		RulesToClone(25, "", ""),
		RulesToClone(26, "", ""),
		RulesToClone(27, "", ""),
		RulesToClone(28, "", ""),
		RulesToClone(29, "", ""),
		RulesToClone(30, "", ""),
		RulesToClone(31, "", ""),
		RulesToClone(32, "", ""),
		RulesToClone(33, "", ""),
		RulesToClone(34, "", ""),
		RulesToClone(35, "", ""),
		RulesToClone(36, "", ""),
		RulesToClone(37, "", ""),
		RulesToClone(38, "", ""),
		RulesToClone(39, "", ""),
	},
}
