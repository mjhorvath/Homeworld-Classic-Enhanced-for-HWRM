-- Displays detailed information about unit caps when the user mouses over the units menu
dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")

function BentusiToClone(MyInteger, MyTextA, MyTextB)
	return
	{
		type = "Frame",
		name = "frmNameBentusi",
		autosize = 1,
		arrangetype = "horiz",
		;
		-- Title to clone
		{
			type = "TextLabel",
			name = "lblBentusiA" .. MyInteger,
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
			name = "lblBentusiB" .. MyInteger,
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

BentusiScreen = {
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
--		TintGraphics = 1,
--		backgroundColor = { 0.0, 0.0, 0.0, 5.0 },
	},

	soundOnShow = "SFX_RecallMenuONOFF",
	soundOnHide = "SFX_RecallMenuONOFF",

	onShow = "UI_SetButtonPressed('NewTaskbar', 'btnBentusi', 1); UI_HideScreen('BuildQueueMenu'); UI_HideScreen('EventsScreen'); UI_HideScreen('UnitCapInfoPopup'); UI_HideScreen('BountiesScreen'); UI_HideScreen('ProgressScreen'); UI_HideScreen('MusicScreen'); UI_HideScreen('RulesScreen');",
	onHide = "UI_SetButtonPressed('NewTaskbar', 'btnBentusi', 0);",

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
		BentusiToClone(0, "", ""),
		BentusiToClone(1, "", ""),
		BentusiToClone(2, "", ""),
		BentusiToClone(3, "", ""),
		BentusiToClone(4, "", ""),
		BentusiToClone(5, "", ""),
		BentusiToClone(6, "", ""),
		BentusiToClone(7, "", ""),
	},
}
