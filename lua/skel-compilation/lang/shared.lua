local is_upper = require("skel-compilation.utils").is_upper

local M = {}

local function type()
	local filename = vim.fn.expand("%:t")

	if filename:sub(1, 1) == "I" and is_upper(filename:sub(2, 2)) then
		return "interface"
	else
		return "class"
	end
end

local function classname()
	return vim.fn.expand("%:t:r")
end

M.get_substitutions = function()
	local subs = {
		["CLASS_NAME"] = classname,
		["TYPE"] = type,
	}
	return subs
end

return M
