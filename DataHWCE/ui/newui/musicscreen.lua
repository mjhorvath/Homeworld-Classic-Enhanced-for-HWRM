-- Displays detailed information about unit caps when the user mouses over the units menu
dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")

function MusicToClone(MyInteger, MyTextA, MyTextB)
	return
	{
		type = "Frame",
		name = "frmNameMusic",
		autosize = 1,
		arrangetype = "horiz",
		;
		-- Title to clone
		{
			type = "TextLabel",
			name = "lblMusicA" .. MyInteger,
			autosize = 0,
			ignored = 1,
--			backgroundColor = {random(255),random(255),random(255),128},
			Layout = {
				size_WH = { w = 1, h = STD_LABEL_HEIGHT/2, wr = "px", hr = "scr" },				
				min_WH = { w = 30, wr = "px" },
			},
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Right",
				text = MyTextA,
			},
			giveParentMouseInput = 1,
			dropShadow = 1,
			visible = 1,
		},
		{
			type = "TextLabel",
			name = "lblMusicB" .. MyInteger,
			autosize = 0,
			ignored = 1,
--			backgroundColor = {random(255),random(255),random(255),128},
			Layout = {
				size_WH = { w = 1, h = STD_LABEL_HEIGHT/2, wr = "px", hr = "scr" },				
				min_WH = { w = 400, wr = "px" },
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

MusicScreen = {
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

	onShow = "UI_SetButtonPressed('NewTaskbar', 'btnMusic', 1); UI_HideScreen('BuildQueueMenu'); UI_HideScreen('EventsScreen'); UI_HideScreen('UnitCapInfoPopup'); UI_HideScreen('BountiesScreen'); UI_HideScreen('ProgressScreen'); UI_HideScreen('BentusiScreen'); UI_HideScreen('RulesScreen');",
	onHide = "UI_SetButtonPressed('NewTaskbar', 'btnMusic', 0);",

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
		MusicToClone(9, "", ""),
		MusicToClone(8, "", ""),
		MusicToClone(7, "", ""),
		MusicToClone(6, "", ""),
		MusicToClone(5, "", ""),
		MusicToClone(4, "", ""),
		MusicToClone(3, "", ""),
		MusicToClone(2, "", ""),
		MusicToClone(1, "", ""),
		MusicToClone(0, "", ""),
	},
}
