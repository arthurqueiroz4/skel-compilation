local skeleton = {}

skeleton.configure = function(skel, substitutions)
	skel.setup({
		-- TODO: Test if it works
		templates_dir = "../../skel-compilation",
		skel_enabled = true,
		apply_skel_for_empty_file = true,
		mappings = {
			["*.cs"] = "csharp.skel",
			["*.java"] = "java.skel",
		},
		substitutions = substitutions,
	})
end

return skeleton
