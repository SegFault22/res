-- Code handling materials is found here

res_material_types = {}
res_materials = {}


function res.add_material_type(id,name)
	table.insert(res_material_types,{id,name})
	res.log("verbose","Added material class \""..name.."\" with id: "..id)
end

function res.add_material(type,id,name,strength,weight)
	if res.list_find(res_material_types,type) == true then do
		table.insert(res_materials,{type,id,name,strength,weight})	
		res.log("verbose","Added material of type: "..type.." with id: "..id)
	end
	else
		res.log("error","Attempt to register material of an unrecognized type or with invalid or nonexistent properties")
	end
end

function res.add_material_items(materialid,itemslist)
	for _, row in ipairs(itemslist) do
		local itemid = row[1]
		local id = "res:"..itemid.."_"..materialid
		local properties = {
			description = res.get_material_name(materialid).." "..itemid,
			inventory_image = "res_"..itemid.."_"..materialid..".png",
			on_place_on_ground = minetest.craftitem_place_item,
		}
		res.add_item("item",id,properties)
	end
end

function res.add_material_items_table(table)
	for _, row in ipairs(table) do
		local materialid = row[1]
		local itemslist = row[2]
		res.add_material_items(materialid,itemslist)
	end
end
