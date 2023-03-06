-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

--NVIM-TREE
require"nvim-tree".setup({
    sync_root_with_cwd = true,
    view = {
        mappings = {
            list = {
                { key = "<C-e>", action = "edit_in_place" }
            }
        }
    },
    renderer = {
        highlight_git = true,
    }
})

local function toggle_replace()
    local view = require"nvim-tree.view"
    local api = require"nvim-tree.api"
    if view.is_visible() then
        api.tree.close()
    else
        require"nvim-tree".open_replacing_current_buffer()
    end
end

vim.keymap.set("n", "<leader>pv", toggle_replace)
vim.keymap.set("n", "<leader>pt", vim.cmd.NvimTreeToggle)
