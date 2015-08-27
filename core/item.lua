-- Item system

res_item_types = {}
res_items = {}

function res.add_item_type(id,name,materialtype)
	table.insert(res_item_types,{ id,name,materialtype })
	res.log("verbose","Added item type with id: "..id)
end

function res.add_item(type,itemid,properties)
	if type == "item" then
		minetest.register_craftitem(itemid,properties)
		table.insert(res_items,{type,itemid})
		res.log("verbose","Added item of type: Item with id: "..itemid)
	elseif type == "node" then
		minetest.register_node(itemid,properties)
		table.insert(res_items,{type,itemid})
		res.log("verbose","Added item of type: Node with id: "..itemid)
	elseif type == "tool" then
		minetest.register_tool(itemid,properties)
		table.insert(res_items,{type,itemid})
		res.log("verbose","Added item of type: Tool with id: "..itemid)
	else
		res.log("error","Invalid or unrecognized Item Type, aborting Registry Entry")
	end
end
