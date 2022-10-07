-- TODO: Configure it
local tg = require("utils").require_plugin("toggleterm")
local terminal = require("utils").require_plugin("toggleterm.terminal")

if not tg or not terminal then
    return
end

local Terminal = terminal.Terminal
tg.setup({
    size = 13,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = "1",
    start_in_insert = true,
    persist_size = true,
    direction = "horizontal",
})

-- 新建终端
local gmap = vim.api.nvim_set_keymap
local bmap = vim.api.nvim_buf_set_keymap
local opt = {
    noremap = true,
    silent = true,
}

-- 新建浮动终端
local floatTerm = Terminal:new({
    hidden = true,
    direction = "float",
    float_opts = {
        border = "single",
    },
    on_open = function(term)
        vim.cmd("startinsert")
        -- 浮动终端中 <ESC> 是退出插入模式
        bmap(term.bufnr, "t", "<ESC>", "<C-\\><C-n>", opt)
    end,
    on_close = function()
        -- 重新映射 <ESC>
        gmap("t", "<ESC>", "<C-\\><C-n>", opt)
    end,
})

-- 新建 lazygit 终端
local lazyGit = Terminal:new({
    cmd = "lazygit",
    hidden = true,
    direction = "float",
    float_opts = {
        border = "single",
    },
    on_open = function(term)
        vim.cmd("startinsert")
        -- lazygit 中 q 是退出
        bmap(term.bufnr, "i", "q", "<cmd>close<CR>", opt)
    end,
    on_close = function()
        -- 重新映射
        gmap("t", "<ESC>", "<C-\\><C-n>", opt)
    end,
})

-- 定义新的方法
tg.float_toggle = function()
    floatTerm:toggle()
end

tg.lazygit_toggle = function()
    lazyGit:toggle()
end

local nmap = require("core.keymap").nmap
nmap("<leader>tt", '<cmd>exe v:count."ToggleTerm"<CR>', { desc = "Toggle a common terminal" })
nmap("<leader>tf", tg.float_toggle, { desc = "Toggle a float terminal" })
nmap("<leader>tg", tg.lazygit_toggle, { desc = "Toggle a lazygit terminal" })
nmap("<leader>ta", "<cmd>ToggleTermToggleAll<CR>", { desc = "Toggle all terminal" })
