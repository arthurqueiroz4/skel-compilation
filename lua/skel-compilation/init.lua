local skelconf = require("skel-compilation.conf.skeleton")

local main = {}

function main.setup()
	local subs = require("skel-compilation.lang").get_all_substituations()
	skelconf.configure(subs)
end

return main
