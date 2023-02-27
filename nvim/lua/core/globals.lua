-- Message to not installed plugins
vim.g.noti = function(plugin)
    print(plugin .. ' is not installed')
end

vim.g.ensure_installed = function(plugin)
    local setup, installed = pcall(require, plugin)
    if not setup then
        print(plugin .. ' is not installed')
        return false
    else 
        return installed
    end
end
