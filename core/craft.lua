function res.add_craftrecipe_shaped(input,output)
	minetest.register_craft({
		output = output,
		recipe = input,
	})
end

function res.add_craftrecipe_shapeless(input,output)
	minetest.register_craft({
		type = "shapeless",
		output = output,
		recipe = input,
	})
end

function res.add_craftrecipe_cooking(input,output)
	minetest.register_craft({
		type = "cooking",
		output = output,
		recipe = input,
	})
end
