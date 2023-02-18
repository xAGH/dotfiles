local plugins_path = "$HOME/.config/nvim/lua/config/"
local cmd = io.popen("ls " .. plugins_path)
local result = cmd:read("*a")
cmd:close()

for str in string.gmatch(result, "([^\n]+)") do
    if str ~= "init.lua" then
        require ("config." .. string.sub(str,0, -5))
    end
end
