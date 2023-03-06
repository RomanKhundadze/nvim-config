local map = vim.keymap.set

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

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

local nvim_tree_events = require('nvim-tree.events')
local bufferline_api = require('bufferline.api')

local function get_tree_size()
  return require'nvim-tree.view'.View.width
end

nvim_tree_events.subscribe('TreeOpen', function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('Resize', function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('TreeClose', function()
  bufferline_api.set_offset(0)
end)
