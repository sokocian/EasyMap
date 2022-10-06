local RunService = game:GetService("RunService")

local isPlaying = RunService:IsRunning()

if not isPlaying then
	local toolbarSection = plugin:CreateToolbar("Easy Map")

	local editorButton = toolbarSection:CreateButton("Editor", "Open Editor", "rbxasset://textures/Cursors/mouseIconCameraTrack.png")

	editorButton.Click:Connect(function()
		local widgetInfo = DockWidgetPluginGuiInfo.new(

			Enum.InitialDockState.Float, -- Widget will be initialized in floating panel

			true, -- Widget will be initially enabled

			false, -- Don't override the previous enabled state

			200, -- Default width of the floating window

			300, -- Default height of the floating window

			150, -- Minimum width of the floating window (optional)

			150 -- Minimum height of the floating window (optional)

		)
		
		plugin:CreateDockWidgetPluginGui("Easy Editor", widgetInfo)
	end)
end