local module = {}

local ClassesFolder = script.Parent:WaitForChild("classes")
local Classes = {}

for _, module in pairs(classes:GetChildren()) do
	if module:IsA("ModuleScript") then
		local class, err = pcall(require, module)

		if class then
			table.insert(Classes, {
				file = module,
				class = class
			})
		elseif err then
			error("An error occured while loading module '"..module.Name.."'")
		else
			error("An unknown error occured while loading module '"..module.Name.."'")
		end
	else
		warn("Unexpected instance '" .. module.Name .. "' of class '" .. module.ClassName .. "' in ./classes/")
	end
end

function module.new()
  return "hello world"
end

return module
