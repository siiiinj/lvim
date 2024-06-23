-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.tabstop = 4
-- Set leader key to `\`
lvim.leader = "\\" -- Double backslash to represent a single backslash
lvim.colorscheme = "dogrun"
-- Function to insert the specified header template
local function insertHeader()
    local header = [[
    /*
    ** EPITECH PROJECT, %Y
    ** %:t
    ** File description:
    ** %:t
    */
        ]]

    vim.api.nvim_put({ header }, '', true, true)
end

-- Map <leader>h to insert the header
lvim.keys.normal_mode["<leader>h"] = ":lua insertHeader()<CR>"

-- LunarVim settings (optional)
lvim.format_on_save = true
lvim.lint_on_save = true
