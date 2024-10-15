local M = {}

M.concat = function(...)
	local result = {}
	for _, tbl in ipairs({ ... }) do
		for key, value in pairs(tbl) do
			result[key] = value
		end
	end
	return result
end

M.is_upper = function(char)
	return char == string.upper(char) and char ~= string.lower(char)
end

M.reverse_table = function(t)
	local reversed = {}
	for i = #t, 1, -1 do
		table.insert(reversed, t[i])
	end
	return reversed
end
return M
