vim.opt.tabstop = 4        -- A tab character is 4 spaces
vim.opt.shiftwidth = 4     -- Indent is 4 spaces
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.softtabstop = 4    -- Makes Tab/Backspace align with spaces
vim.opt.number = true
vim.opt.pumheight = 10 

-- Keymaps

local keymap = vim.keymap.set


-- leader keymap
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
keymap('', '<space>', '<nop>', { silent = true, desc = 'Leader key' })

require("config.lazy")

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

local save_timer = vim.loop.new_timer()
save_timer:start(0, 10000, vim.schedule_wrap(function() 
    if vim.bo.modified then
        vim.cmd("write")
    end
end))
