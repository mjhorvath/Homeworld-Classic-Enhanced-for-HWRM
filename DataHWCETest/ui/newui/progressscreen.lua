-- Displays detailed information about unit caps when the user mouses over the units menu
dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")

function ProgressToClone(MyInteger, MyTextA, MyTextB, MyTextC, MyTextD, MyTextE)
	return
	{
		type = "Frame",
		name = "frmNameProgress",
		autosize = 1,
		arrangetype = "horiz",
		;
		-- Title to clone
		{
			type = "TextLabel",
			name = "lblProgressA" .. MyInteger,
			autosize = 0,
			ignored = 1,
			--backgroundColor = {random(255),random(255),random(255),128},
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
			name = "lblProgressB" .. MyInteger,
			autosize = 0,
			ignored = 1,
			--backgroundColor = {random(255),random(255),random(255),128},
			Layout = {
				size_WH = { w = 1, h = STD_LABEL_HEIGHT/2, wr = "px", hr = "scr" },				
				min_WH = { w = 100, wr = "px" },
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
		{
			type = "TextLabel",
			name = "lblProgressC" .. MyInteger,
			autosize = 0,
			ignored = 1,
			--backgroundColor = {random(255),random(255),random(255),128},
			Layout = {
				size_WH = { w = 1, h = STD_LABEL_HEIGHT/2, wr = "px", hr = "scr" },				
				min_WH = { w = 100, wr = "px" },
			},
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				text = MyTextC,
			},
			giveParentMouseInput = 1,
			dropShadow = 1,
			visible = 1,
		},
		{
			type = "TextLabel",
			name = "lblProgressD" .. MyInteger,
			autosize = 0,
			ignored = 1,
			--backgroundColor = {random(255),random(255),random(255),128},
			Layout = {
				size_WH = { w = 1, h = STD_LABEL_HEIGHT/2, wr = "px", hr = "scr" },				
				min_WH = { w = 100, wr = "px" },
			},
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				text = MyTextD,
			},
			giveParentMouseInput = 1,
			dropShadow = 1,
			visible = 1,
		},
		{
			type = "TextLabel",
			name = "lblProgressE" .. MyInteger,
			autosize = 0,
			ignored = 1,
			--backgroundColor = {random(255),random(255),random(255),128},
			Layout = {
				size_WH = { w = 1, h = STD_LABEL_HEIGHT/2, wr = "px", hr = "scr" },				
				min_WH = { w = 100, wr = "px" },
			},
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				text = MyTextE,
			},
			giveParentMouseInput = 1,
			dropShadow = 1,
			visible = 1,
		},
		{
			type = "TextLabel",
			name = "lblProgressF" .. MyInteger,
			autosize = 0,
			ignored = 1,
			--backgroundColor = {random(255),random(255),random(255),128},
			Layout = {
				size_WH = { w = 1, h = STD_LABEL_HEIGHT/2, wr = "px", hr = "scr" },				
				min_WH = { w = 800, wr = "px" },
			},
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				text = MyTextF,
			},
			giveParentMouseInput = 1,
			dropShadow = 1,
			visible = 1,
		},
	}
end

ProgressScreen = {
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

	onShow = "UI_SetButtonPressed('NewTaskbar', 'btnProgress', 1); UI_HideScreen('BuildQueueMenu'); UI_HideScreen('EventsScreen'); UI_HideScreen('UnitCapInfoPopup'); UI_HideScreen('BentusiScreen'); UI_HideScreen('BountiesScreen'); UI_HideScreen('MusicScreen'); UI_HideScreen('RulesScreen');",
	onHide = "UI_SetButtonPressed('NewTaskbar', 'btnProgress', 0);",

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
		ProgressToClone(0, "", "", "", "", "", ""),
		ProgressToClone(1, "", "", "", "", "", ""),
		ProgressToClone(2, "", "", "", "", "", ""),
		ProgressToClone(3, "", "", "", "", "", ""),
		ProgressToClone(4, "", "", "", "", "", ""),
		ProgressToClone(5, "", "", "", "", "", ""),
		ProgressToClone(6, "", "", "", "", "", ""),
		ProgressToClone(7, "", "", "", "", "", ""),
		ProgressToClone(8, "", "", "", "", "", ""),
	},
}
