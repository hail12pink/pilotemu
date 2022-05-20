local module = {}
module.exports = {}

function module.exports.GetResource()
	return "Iron"
end

function module.exports.GetAmount()
	return math.random(0, 1000)
end

return module
