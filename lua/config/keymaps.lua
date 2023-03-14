local map = vim.keymap.set

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

-- search and replace über alles
map("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Buffer Bar
map("n", "<leader>bh", "<Cmd>BufferLineCyclePrev<CR>")
map("n", "<leader>bl", "<Cmd>BufferLineCycleNext<CR>")

map("n", "<leader>bmh", "<Cmd>BufferLineMovePrev<CR>")
map("n", "<leader>bml", "<Cmd>BufferLineMoveNext<CR>")
map("n", "<leader>bsd", "<Cmd>BufferLineOrderByDirectory<CR>")

-- unötige maps entvernen
map("n", "Q", "<nop>")

--Mal gesehen keinen plan was das tut.
--map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
--map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--map("n", "<leader>pv", vim.cmd.Ex)

-- nicht Funktionierend
--map("n", "<C-k>", "<cmd>cnext<CR>zz")
--map("n", "<C-j>", "<cmd>cprev<CR>zz")
--map("n", "<leader>k", "<cmd>lnext<CR>zz")
--map("n", "<leader>j", "<cmd>lprev<CR>zz")
