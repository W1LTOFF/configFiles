local map = vim.keymap.set

-- map("n", "<leader>pv", vim.cmd.Ex)

-- tabs
map("n", "th", ":-tabnext<cr>")
map("n", "tl", ":+tabnext<cr>")
map("n", "<leader><C-W>", ":close<cr>")
map("n", "nt", ":tabnew<cr>")
map("n", "<leader>tt", ":vsplit<cr><C-W><C-P>:Ex<cr>")
map("n", "<leader>ot", ":split<cr>:res -8<cr>:term<cr>")

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>')
map('n', '<A-.>', '<Cmd>BufferNext<CR>')
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>')
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>')
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
map('n', '<A-0>', '<Cmd>BufferLast<CR>')
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>')
-- Goto pinned/unpinned buffer
--                 :BufferGotoPinned
--                 :BufferGotoUnpinned
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>')
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>')
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>')
map('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>')
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>')
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>')
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>')

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

map("n", "<leader><F5>", ":UndotreeToggle<cr>")

map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map("n", "<leader>sh", vim.lsp.buf.signature_help, { desc = "Show signature help" })
map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, { desc = "Add workspace folder" })
map("n", "gra", vim.lsp.buf.code_action, { desc = "code actions" })
map("n", "grr", vim.lsp.buf.references, { desc = "code references" })

map("n", "<A-k>", ":m -2<cr>", { desc = "move line up" })
map("n", "<A-j>", ":m +1<cr>", { desc = "move line down" })


map("n", "<A-up>", ":m -2<cr>", { desc = "move line up" })
map("n", "<A-down>", ":m +1<cr>", { desc = "move line down" })

map("i", "<C-d>", vim.lsp.buf.signature_help, { desc = "get signature help" })
map("n", "<C-d>", vim.lsp.buf.signature_help, { desc = "get signature help" })

map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd>DapContinue<cr>", { desc = "Start or continue the debugger" })
map("n", "<F5>", "<cmd>DapStepOver<cr>", { desc = "debugger step over" })
map("n", "<C-F5>", "<cmd>DapStepInto<cr>", { desc = "debugger stepinto" })
map("n", "<leader>dt", "<cmd>DapTerminate<cr>", { desc = "debugger terminate" })

map("n", "<C-b>", "<cmd>NvimTreeToggle<cr>", { desc = "toggle nvimTree" })
