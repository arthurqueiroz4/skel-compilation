local skel = require("skel-nvim")
local skelconf = require("conf.skeleton")
local utils = require("utils")

local main = {}

function main.setup()
	local cs_subs = require("lang.csharp").get_substitutions()
	local java_subs = require("lang.java").get_substitutions()

	local subs = utils.concant(cs_subs, java_subs)
	skelconf.configurate(skel, subs)
end

return main
