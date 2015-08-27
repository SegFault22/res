function res.add_ore_scatter(nodeid,wherein,scarcity,numores,clustsize,hmin,hmax)
	minetest.register_ore({
		ore_type = "scatter",
		ore = nodeid,
		wherein = wherein,
		clust_scarcity = scarcity,
		clust_num_ores = numores,
		clust_size = clustsize,
		y_min = hmin,
		y_max = hmax,
	})
end

function res.add_ore_sheet(nodeid,wherein,scarcity,numores,clustsize,hmin,hmax,threshold,noiseparams)
	minetest.register_ore({
		ore_type = "sheet",
		ore = nodeid,
		wherein = wherein,
		clust_scarcity = scarcity,
		clust_num_ores = numores,
		clust_size = clustsize,
		y_min = hmin,
		y_max = hmax,
		noise_threshold = threshold,
		noise_params = noiseparams,
	})
end

function res.add_ore_blob(nodeid,wherein,scarcity,clustsize,hmin,hmax,threshold,noiseparams)
	minetest.register_ore({
		ore_type = "blob",
		ore = nodeid,
		wherein = wherein,
		clust_scarcity = scarcity,
		clust_size = clustsize,
		y_min = hmin,
		y_max = hmax,
		noise_threshold = threshold,
		noise_params = noiseparams,
	})
end
