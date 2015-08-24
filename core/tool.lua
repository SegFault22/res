res_tool_types = {}

function res.add_tool_type(id,name)
	table.insert(res_tool_types,{id,name})
	res.log("verbose","Added tool class \""..name.."\" with id: "..id)
end

function res.add_tool(type,headmaterial,handlematerial,maxdroplevel,groupcaps,damagegroups)

	local toolid = "res:"..type.."_"..headmaterial.."_h"..handlematerial
	local toolname = res.get_material_name(headmaterial).." "..res.get_tooltype_name(type).." ("..res.get_material_name(handlematerial).." Handle)"

	local headweightfactor = res.get_material_weight(headmaterial)
	local handleweightfactor = res.get_material_weight(handlematerial)
	local totalweightfactor = headweightfactor+handleweightfactor

	local properties = {
		description = toolname,
		inventory_image = "res_toolhandle_"..handlematerial..".png^res_toolhead_"..type.."_"..headmaterial..".png",
		tool_capabilities = {
			full_punch_interval = totalweightfactor/100,
			max_drop_level = maxdroplevel,
			groupcaps = groupcaps,
			damage_groups = damagegroups,
		},
	}
	

	res.add_item("tool",toolid,properties)

end
--[[
function res.add_tool(material,id,properties)

	local itemid = "res:tool_"..id.."_"..material
	local properties = {
		description = tool_name,
		inventory_image = "res_toolhead_"..tool_head..".png^res_toolhandle_"..tool_handle..".png",
		tool_capabilities = {
			full_punch_interval = tool_material_weight/50..'',
			max_drop_level = tool_max_drop_level..'',
			groupcaps = tool_groupcaps,
			damage_groups = tool_damage_groups,
		}

	res.add_item(tool,itemid,properties)

end

for _, row in ipairs(res_tools) do
	local tool_material = row[1]
	local tool_id = row[2]
	local tool_name = row[3]
	local tool_head = row[4]
	local tool_handle = row[5]
	local tool_max_drop_level = row[6]
	local tool_groupcaps = row[7]
	local tool_damage_groups = row[8]
	local tool_material_weight = res.get_material_weight(tool_material)
	local tool_material_strength = res.get_material_strength(tool_material)

	local itemid = "res:"..tool_id
	local properties = {
		description = tool_name,
		inventory_image = "res_toolhead_"..tool_head..".png^res_toolhandle_"..tool_handle..".png",
		tool_capabilities = {
			full_punch_interval = tool_material_weight/50..'',
			max_drop_level = tool_max_drop_level..'',
			groupcaps = tool_groupcaps,
			damage_groups = tool_damage_groups,
		}

	res.add_item(tool,itemid,properties)
end
--]]
