local reverse_table = require("skel-compilation.utils").reverse_table

local M = {}

local function find_csproj_dir_recursive(dir, dirs_traversed)
	local current_dir_name = vim.fn.fnamemodify(dir, ":t")
	table.insert(dirs_traversed, current_dir_name)

	local csproj = vim.fn.glob(dir .. "/*.csproj")

	if csproj ~= "" then
		return dir
	end

	if dir == "/" or dir:match("^%a:[\\/]*$") then
		return nil
	end

	local parent_dir = vim.fn.fnamemodify(dir, ":h")
	return find_csproj_dir_recursive(parent_dir, dirs_traversed)
end

local function namespace()
	local current_dir = vim.fn.expand("%:p:h")

	local dirs_traversed = {}

	local csproj_dir = find_csproj_dir_recursive(current_dir, dirs_traversed)
	if not csproj_dir then
		return "NamespaceNotFound"
	end

	local reversed = reverse_table(dirs_traversed)

	return table.concat(reversed, ".")
end

M.get_substitutions = function()
	local subs = {
		["NAMESPACE"] = namespace,
	}
	return subs
end

return M
