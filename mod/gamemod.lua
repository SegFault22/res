metal_items = {
{"lump"},
{"ingot"},
{"nugget"},
{"dust"}
}

-- Add types first, so that they are recognized by the name getting functions

res.add_material_type("wood","Wood")
res.add_material_type("stone","Stone")
res.add_material_type("metal","Metal")
res.add_material_type("crystal","Crystal")
res.add_material_type("hadronite","Hadronite")

-- Materials are types of types - don't think about that too much, you might hurt your brain

res.add_material("wood","applewood","Applewood",10,30)
res.add_material("wood","pinewood","Pinewood",20,35)
res.add_material("wood","junglewood","Junglewood",15,40)

res.add_material("metal","copper","Copper",40,60)
res.add_material("metal","tin","Tin",70,40)
res.add_material("metal","iron","Iron",90,50)
res.add_material("metal","cobalt","Cobalt",100,50)
res.add_material("metal","nickel","Nickel",65,55)
res.add_material("metal","gold","Gold",15,115)
res.add_material("metal","silver","Silver",30,85)

res.add_material("metal","aluminiumbrass","Aluminium Brass",50,20)

res.add_material("crystal","quartz","Quartz",80,45)
res.add_material("crystal","mese","Mese",120,65)
res.add_material("crystal","diamond","Diamond",320,60)

res.add_material("hadronite","neutronium","Neutronium",1024,375)

res.add_item_type("stick","Stick","wood")
res.add_item_type("dust","Dust","wood")

res.add_item_type("shard","Shard","stone")
res.add_item_type("fragment","Fragment","stone")
res.add_item_type("dust","Dust","stone")

res.add_item_type("lump","Lump","metal")
res.add_item_type("ingot","Ingot","metal")
res.add_item_type("nugget","Nugget","metal")
res.add_item_type("dust","Dust","metal")

res.add_item_type("crystal","Crystal","crystal")
res.add_item_type("gem","Gem","crystal")
res.add_item_type("fragment","Fragment","crystal")
res.add_item_type("dust","Dust","crystal")

res.add_node_type("block","Block")
res.add_node_type("ore","Ore")

res.add_tool_type("pickaxe","Pickaxe")
res.add_tool_type("axe","Axe")
res.add_tool_type("shovel","Shovel")
res.add_tool_type("sword","Sword")

-- Begin adding items here

res.add_material_items("copper",metal_items)
res.add_material_items("tin",metal_items)
res.add_material_items("iron",metal_items)
res.add_material_items("cobalt",metal_items)
res.add_material_items("nickel",metal_items)
res.add_material_items("gold",metal_items)
res.add_material_items("silver",metal_items)

res.add_node("block","copper",{"res_block_copper.png"},{cracky=1,level=2},"res:block_copper",default.node_sound_stone_defaults())
res.add_node("block","iron",{"res_block_iron.png"},{cracky=1,level=2},"res:block_iron",default.node_sound_stone_defaults())
res.add_node("block","cobalt",{"res_block_cobalt.png"},{cracky=1,level=2},"res:block_cobalt",default.node_sound_stone_defaults())

res.add_node("ore","copper",{"default_stone.png^res_ore_copper.png"},{cracky=3,level=1},"res:lump_copper",default.node_sound_stone_defaults())
res.add_node("ore","iron",{"default_stone.png^res_ore_iron.png"},{cracky=2,level=1},"res:lump_iron",default.node_sound_stone_defaults())
res.add_node("ore","cobalt",{"default_stone.png^res_ore_cobalt.png"},{cracky=2,level=1},"res:lump_cobalt",default.node_sound_stone_defaults())

res.add_tool("pickaxe", "iron", "applewood", 1, { cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=30, maxlevel=2}, }, {fleshy=4})
res.add_tool("pickaxe", "iron", "aluminiumbrass", 1, { cracky = {times={[1]=3.80, [2]=1.40, [3]=0.60}, uses=25, maxlevel=2}, }, {fleshy=4})
res.add_tool("pickaxe", "iron", "iron", 1, { cracky = {times={[1]=4.20, [2]=1.80, [3]=1.00}, uses=30, maxlevel=2}, }, {fleshy=4})

res.add_tool("axe", "iron", "applewood", 1, { choppy = {times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=30, maxlevel=2}, }, {fleshy=4})
res.add_tool("axe", "iron", "aluminiumbrass", 1, { choppy = {times={[1]=2.30, [2]=1.20, [3]=0.90}, uses=35, maxlevel=2}, }, {fleshy=4})
res.add_tool("axe", "iron", "iron", 1, { choppy = {times={[1]=2.70, [2]=1.60, [3]=1.10}, uses=45, maxlevel=2}, }, {fleshy=4})

res.add_tool("shovel", "iron", "applewood", 1, { crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=30, maxlevel=2}, }, {fleshy=4})
res.add_tool("shovel", "iron", "aluminiumbrass", 1, { crumbly = {times={[1]=1.30, [2]=0.75, [3]=0.35}, uses=35, maxlevel=2}, }, {fleshy=4})
res.add_tool("shovel", "iron", "iron", 1, { crumbly = {times={[1]=1.70, [2]=1.05, [3]=0.45}, uses=45, maxlevel=2}, }, {fleshy=4})

res.add_tool("sword", "iron", "applewood", 1, { snappy = {times={[1]=2.50, [2]=1.20, [3]=0.40}, uses=30, maxlevel=2}, }, {fleshy=6})
res.add_tool("sword", "iron", "aluminiumbrass", 1, { snappy = {times={[1]=2.30, [2]=1.00, [3]=0.30}, uses=30, maxlevel=2}, }, {fleshy=6})
res.add_tool("sword", "iron", "iron", 1, { snappy = {times={[1]=2.70, [2]=1.40, [3]=0.50}, uses=30, maxlevel=2}, }, {fleshy=6})

-- Ore generation


res.add_ore_blob("res:ore_iron", "air", 30000, 20, -31000, 31000, 1.2, {offset=0.35, scale=0.2, spread={x=4, y=4, z=4}, seed=78900, octaves=2, persist=0.6})
res.add_ore_blob("res:ore_copper", "air", 28000, 22, -31000, 31000, 1.0, {offset=0.35, scale=0.2, spread={x=4, y=4, z=4}, seed=78900, octaves=2, persist=0.6})
res.add_ore_blob("res:ore_cobalt", "air", 32000, 16, -31000, 31000, 1.3, {offset=0.35, scale=0.2, spread={x=4, y=4, z=4}, seed=78900, octaves=2, persist=0.6})

-- Craft recipes

res.add_craftrecipe_cooking("res:lump_copper","res:ingot_copper")
res.add_craftrecipe_cooking("res:lump_iron","res:ingot_iron")
res.add_craftrecipe_cooking("res:lump_cobalt","res:ingot_cobalt")


--[[
for _, row in ipairs(res_items) do
	local type = row[1]
	local id = row[2]
	local i = type.." "..id
	minetest.chat_send_all(i)
end
--]]
