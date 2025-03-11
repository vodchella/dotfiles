local servers = {
    --'bashls',
    --'dockerls',
    --'html',
    --'jsonls',
    --'sumneko_lua',
    --'marksman',
    --'pyright',
    --'lemminx',  -- XML
    --'yamlls',

}

require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = servers,
    automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_status_ok then
	return
end

for _, server in pairs(servers) do
    server = vim.split(server, "@")[1]
    local require_ok, conf_opts = pcall(require, "lsp.settings." .. server)
    if require_ok then
        lspconfig[server].setup(conf_opts)
    end
end
