local module = {}
module.exports = {}

function module.exports.GetReading(mode: number)
	if mode == 0 then -- velocity
		return 0
	elseif mode == 1 then -- rotational velocity
		return 0
	elseif mode == 2 then -- temperature
		return 50
	elseif mode == 3 then -- region time
		return 12
	elseif mode == 4 then -- available power
		return 50000
	elseif mode == 5 then -- part size
		return Vector3.new(4, 4, 4)
	elseif mode == 6 then
		return Vector3.new(0, 0, 0)
	end

	return error("No mode specified!", 2)
end

return module
