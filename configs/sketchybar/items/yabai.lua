local colors = require("colors")

-- Function to get the current yabai space layout
local function get_yabai_space_layout()
	-- Query the current space layout from Yabai, using jq to get the "type" field
	local space_query = "yabai -m query --spaces --space | jq -r .type"

	-- Execute the query and get the space layout
	local yabai_layout = io.popen(space_query):read("*l") -- use "*l" to read a single line

	-- If the query fails, return a fallback value (optional)
	if not yabai_layout or yabai_layout == "" then
		return "unknown"
	end

	-- Return the fetched layout type
	return yabai_layout
end

-- Function to determine the icon based on the space layout
local function get_layout_icon(layout)
	if layout == "bsp" then
		return "" -- Icon for bsp layout
	elseif layout == "stack" then
		return "﯅" -- Icon for stack layout
	elseif layout == "float" then
		return "" -- Icon for float layout
	end
	return "❓" -- Default icon for unknown layout
end

-- Define the yabai_layout item
local yabai_layout_item = sbar.add("item", {
	position = "left", -- Add item to the left of the bar
	updates = true, -- Enable updates
	update_freq = 3, -- Update every 3 seconds
	label = {
		string = "❓", -- Placeholder icon until state is fetched
		padding_left = 5,
		padding_right = 5,
		font = {
			style = "Regular",
			size = 14.0,
		},
		color = colors.white,
	},
	background = {
		color = colors.transparent,
		border_color = colors.transparent,
	},
})

-- Set up the update handler
yabai_layout_item:subscribe("update", function()
	local yabai_layout_current = get_yabai_space_layout()

	-- If layout is fetched successfully, update the label with the appropriate icon
	if yabai_layout_current then
		yabai_layout_item:set({
			label = {
				string = get_layout_icon(yabai_layout_current),
			},
		})
	else
		-- Handle any errors in fetching layout (optional)
		yabai_layout_item:set({
			label = {
				string = "❓", -- Show a fallback icon if something goes wrong
			},
		})
	end
end)

-- Set up the click handler
yabai_layout_item:subscribe("mouse.clicked", function()
	os.execute("~/.config/sketchybar/helpers/yabai_mode_click.sh")
end)
