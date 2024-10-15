local skelconf = require("skel-compilation.conf.skeleton")
local utils = require("skel-compilation.utils")

local main = {}

function main.setup()
	local shared_subs = require("skel-compilation.lang.shared").get_substitutions()

	local subs = utils.concat(shared_subs)

	skelconf.configure(subs)
end

return main
