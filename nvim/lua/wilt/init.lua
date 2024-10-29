vim.g.mapleader = " "

require("wilt.lazy")
require("wilt.settings")
require("wilt.remap")

local lspconfig = require('lspconfig')
lspconfig.rust_analyzer.setup {}
lspconfig.clangd.setup {}
lspconfig.lua_ls.setup {}
lspconfig.vimls.setup {}
lspconfig.pylsp.setup {}
lspconfig.marksman.setup {}
lspconfig.asm_lsp.setup {}
lspconfig.ts_ls.setup {}
lspconfig.glsl_analyzer.setup {}
-- lspconfig.gopls.setup {}
