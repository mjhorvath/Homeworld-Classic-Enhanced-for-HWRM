-- Displays detailed information about unit caps when the user mouses over the units menu
dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")

function BountiesToClone(MyInteger, MyTextA, MyTextB)
	return
	{
		type = "Frame",
		name = "frmNameBounties",
		autosize = 1,
		arrangetype = "horiz",
		;
		-- Title to clone
		{
			type = "TextLabel",
			name = "lblBountyA" .. MyInteger,
			autosize = 0,
			ignored = 1,
--			backgroundColor = {random(255),random(255),random(255),128},
			Layout = {
				size_WH = { w = 1, h = STD_LABEL_HEIGHT/2, wr = "px", hr = "scr" },				
				min_WH = { w = 200, wr = "px" },
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
			name = "lblBountyB" .. MyInteger,
			autosize = 0,
			ignored = 1,
--			backgroundColor = {random(255),random(255),random(255),128},
			Layout = {
				size_WH = { w = 1, h = STD_LABEL_HEIGHT/2, wr = "px", hr = "scr" },				
				min_WH = { w = 75, wr = "px" },
			},
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Right",
				text = MyTextB,
			},
			giveParentMouseInput = 1,
			dropShadow = 1,
			visible = 1,
		},
	}
end

BountiesScreen = {

	maxColor = {255,0,0,255}, -- color for max pop reached
	availColor = {0,255,0,255},	-- color for pop available

	--size = {32, 71, 100, 200},
	autosize = 1,
	RootElementSettings = {

		autosize = 1,
		--backgroundColor          = {255,128,0,255},

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

	onShow = "UI_SetButtonPressed('NewTaskbar', 'btnBounties', 1); UI_HideScreen('BuildQueueMenu'); UI_HideScreen('EventsScreen'); UI_HideScreen('UnitCapInfoPopup'); UI_HideScreen('BentusiScreen'); UI_HideScreen('ProgressScreen'); UI_HideScreen('MusicScreen'); UI_HideScreen('RulesScreen');",
	onHide = "UI_SetButtonPressed('NewTaskbar', 'btnBounties', 0);",

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
		BountiesToClone(0, "", ""),
		BountiesToClone(1, "", ""),
		BountiesToClone(2, "", ""),
		BountiesToClone(3, "", ""),
		BountiesToClone(4, "", ""),
		BountiesToClone(5, "", ""),
		BountiesToClone(6, "", ""),
		BountiesToClone(7, "", ""),
		BountiesToClone(8, "", ""),
	},
}
