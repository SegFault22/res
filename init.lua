--[[
Resources Mod
Made by segfault22
--]]

res = {}
modpath = minetest.get_modpath("res")
worldpath = minetest.get_worldpath()

dofile(modpath.."/core/log.lua")
res.log("normal","Initializing...")

dofile(modpath.."/core/functions.lua")
res.log("normal","Basic Functions loaded")

dofile(modpath.."/core/material.lua")
res.log("normal","Material System loaded")

dofile(modpath.."/core/item.lua")
res.log("normal","Item System loaded")

dofile(modpath.."/core/node.lua")
res.log("normal","Node System loaded")

dofile(modpath.."/core/mineral.lua")
res.log("normal","Mineral System loaded")

dofile(modpath.."/core/tool.lua")
res.log("normal","Tool System loaded")

res.log("normal","Core initialized; proceeding to load game modifications")
dofile(modpath.."/mod/gamemod.lua")

res.log("normal","Finished loading!")
io.close(res_log)
