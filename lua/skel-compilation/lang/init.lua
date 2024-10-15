local concat = require("skel-compilation.utils").concat

local M = {}

M.get_all_substituations = function()
	return concat(
		require("skel-compilation.lang.shared").get_substitutions(),
		require("skel-compilation.lang.csharp").get_substitutions(),
		require("skel-compilation.lang.java").get_substitutions()
	)
end

return M
