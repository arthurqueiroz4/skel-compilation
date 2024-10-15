local M = {}

M.concat = function(...)
	local result = {}
	local args = { ... }

	for _, t in ipairs(args) do
		for i = 1, #t do
			result[#result + 1] = t[i]
		end
	end

	return result
end

return M
