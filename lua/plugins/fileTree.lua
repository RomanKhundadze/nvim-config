return {
    cmd = "NvimTreeToggle",
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly',

    config = function ()
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
    end
}
