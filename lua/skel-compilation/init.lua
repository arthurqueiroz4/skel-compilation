local skelconf = require("skel-compilation.conf.skeleton")
local utils = require("skel-compilation.utils")
local noice = require("noice")

local main = {}

function main.setup()
	noice.notify("Iniciou", "info")
	local shared_subs = require("skel-compilation.lang.shared").get_substitutions()
	local csharp_subs = require("skel-compilation.lang.csharp").get_substitutions()

	local subs = utils.concat(shared_subs, csharp_subs)

	skelconf.configure(subs)
end

return main
