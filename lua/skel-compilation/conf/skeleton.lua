local skel = require("skel-nvim")

local M = {}

M.configure = function(substitutions)
	skel.setup({
		-- TODO: Search alternative for path absolute
		templates_dir = "/home/arthur/Documentos/plugin-lua/skel-compilation/skeleton",
		skel_enabled = true,
		apply_skel_for_empty_file = true,
		mappings = {
			["*.cs"] = "csharp.skel",
			["*.java"] = "java.skel",
		},
		substitutions = substitutions,
	})
end

return M
