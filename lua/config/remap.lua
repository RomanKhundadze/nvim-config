map = vim.keymap.set

-- Generelle Remaps
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("x", "<leader>pp", [["_dP]])

map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

map({ "n", "v" }, "<leader>d", [["_d]])

map("n", "<leader>f", vim.lsp.buf.format)

map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- search and replace über alles
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--Nvim Tree Mapping
local function toggle_replace()
    local view = require "nvim-tree.view"
    local api = require "nvim-tree.api"
    if view.is_visible() then
        api.tree.close()
    else
        require "nvim-tree".open_replacing_current_buffer()
    end
end

map("n", "<leader>pv", toggle_replace)
map("n", "<leader>pt", vim.cmd.NvimTreeToggle)

-- Fugitve
map("n", "<leader>gs", vim.cmd.Git)

-- Barbar
-- Move to previous/next
map('n', '<leader>bh', '<Cmd>BufferPrevious<CR>')
map('n', '<leader>bl', '<Cmd>BufferNext<CR>')

-- Re-order to previous/next
map('n', '<leader>bmh', '<Cmd>BufferMovePrevious<CR>')
map('n', '<leader>bml', '<Cmd>BufferMoveNext<CR>')
-- Goto buffer in position...
map('n', '<leader>b1', '<Cmd>BufferGoto 1<CR>')
map('n', '<leader>b2', '<Cmd>BufferGoto 2<CR>')
map('n', '<leader>b3', '<Cmd>BufferGoto 3<CR>')
map('n', '<leader>b4', '<Cmd>BufferGoto 4<CR>')
map('n', '<leader>b5', '<Cmd>BufferGoto 5<CR>')
map('n', '<leader>b6', '<Cmd>BufferGoto 6<CR>')
map('n', '<leader>b7', '<Cmd>BufferGoto 7<CR>')
map('n', '<leader>b8', '<Cmd>BufferGoto 8<CR>')
map('n', '<leader>b9', '<Cmd>BufferGoto 9<CR>')
map('n', '<leader>b0', '<Cmd>BufferLast<CR>')
-- Pin/unpin buffer
map('n', '<leader>bp', '<Cmd>BufferPin<CR>')
-- Close buffer
map('n', '<leader>bc', '<Cmd>BufferClose<CR>')
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
map('n', '<leader>bca', '<Cmd>BufferCloseAllButCurrent<CR>')
map('n', '<leader>bcap', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>')
map('n', '<leader>bcl', '<Cmd>BufferCloseBuffersLeft<CR>')
map('n', '<leader>bcl', '<Cmd>BufferCloseBuffersRight<CR>')
-- Magic buffer-picking mode
map('n', '<C-b>', '<Cmd>BufferPick<CR>')
-- Sort automatically by...
map('n', '<leader>bsn', '<Cmd>BufferOrderByBufferNumber<CR>')
map('n', '<leader>bsd', '<Cmd>BufferOrderByDirectory<CR>')
map('n', '<leader>bsl', '<Cmd>BufferOrderByLanguage<CR>')
map('n', '<leader>bsw', '<Cmd>BufferOrderByWindowNumber<CR>')

-- unötige maps entvernen
map("n", "Q", "<nop>")
--map("n", "<leader>pv", vim.cmd.Ex)

--Mal gesehen keinen plan was das tut.
--map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
--map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
