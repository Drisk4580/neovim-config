local lsp = require('lsp-zero').preset({
	name = 'minimal',
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
})

lsp.configure('lua_ls')
lsp.configure('gopls')
lsp.configure('vls')
-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
