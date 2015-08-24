-- Independent logging system

res_log = io.open(worldpath.."/res.log", "w+")

function res.log(loglevel,message)
	res_log:write("[RES] ".."["..loglevel.."] "..message.."\n")
end
