-- Read the README.md file for information on how to use this. (Thank you Phil564 for this code <3.)

local function scan(parent)
	for _,v in pairs(parent:GetChildren()) do
		if v:IsA("BasePart") then
			if v:FindFirstChild("BrickColorValue") then
				v.BrickColor = v.BrickColorValue.Value
				v.BrickColorValue:Destroy()
			end
		end
		scan(v)
	end
end
scan(game:GetService("Workspace"))