-- Basic functions used everywhere

function res.list_find(list,string)
	for _, row in ipairs(list) do
		local row_string = row[1]
		if string == row_string then
			return true
		else end
	end
end

function res.get_material_name(id)
	for _, row in ipairs(res_materials) do
		local row_2 = row[2]
		local row_3 = row[3]
		if row_2 == id then
			return row_3
		end
	end
end

function res.get_material_strength(id)
	for _, row in ipairs(res_materials) do
		local row_2 = row[2]
		local row_4 = row[4]
		if row_2 == id then
			return row_4
		end
	end
end

function res.get_material_weight(id)
	for _, row in ipairs(res_materials) do
		local row_2 = row[2]
		local row_5 = row[5]
		if row_2 == id then
			return row_5
		end
	end
end

function res.get_nodetype_name(id)
	for _, row in ipairs(res_node_types) do
		local row_1 = row[1]
		local row_2 = row[2]
		if row_1 == id then
			return row_2
		end
	end
end

function res.get_tooltype_name(id)
	for _, row in ipairs(res_tool_types) do
		local row_1 = row[1]
		local row_2 = row[2]
		if row_1 == id then
			return row_2
		end
	end
end

--function res.get_material_groupcaps(id)
	
