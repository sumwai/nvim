------------------------
-- nvim comment setup --
------------------------

require('nvim_comment').setup()

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local prettier = {
	formatCommand = [[prettier --stdin-filepath ${INPUT} ${--tab-width:tab_width} --single-quote]],
	formatStdin = true,
}

local lspformat = require('lsp-format')
local lspconfig = require('lspconfig')
local cmp = require('cmp')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'phpactor', 'gopls', 'html' }
for _, language in ipairs(servers) do
	lspconfig[language].setup{
		on_attach = lspformat.on_attach,
		capabilities = capabilities,
		init_options = { documentFormatting = true },
	}
end

require'lspconfig'.efm.setup{
	on_attach = lspformat.on_attach,
	capabilities = capabilities,
	init_options = { documentFormatting = true },
	settings = {
		languages = {
			typescript = { prettier },
			yaml = { prettier },
			lua = { prettier },
			php = { prettier },
		},
	},
}

local luasnip = require('luasnip')
local lspkind = require('lspkind')

local source_mapping = {
	buffer = '[Buffer]',
	nvim_lsp = '[LSP]',
	nvim_lua = '[Lua]',
	path = '[Path]',
}

------------------------
-- nvim complet setup --
------------------------

-- nvim-cmp setup
cmp.setup{
	snippet = { expand = function(args)
		luasnip.lsp_expand(args.body)
	end },
	mapping = cmp.mapping.preset.insert({
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<CR>'] = cmp.mapping.confirm{
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		},
		['<Tab>'] = cmp.mapping(
			function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				else
					fallback()
				end
			end,
			{ 'i', 's' }
		),
		['<S-Tab>'] = cmp.mapping(
			function(fallback)
				if cmp.visible() then
					cmp.select_prev_item()
				elseif luasnip.jumpable(-1) then
					luasnip.jump(-1)
				else
					fallback()
				end
			end,
			{ 'i', 's' }
		),
	}),
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'cmdline' },
		{ name = 'buffer' },
		{ name = 'path' },
	},
	formatting = { format = function(entry, vim_item)
		vim_item.kind = lspkind.presets.default[vim_item.kind]
		local menu = source_mapping[entry.source.name]
		vim_item.menu = menu
		return vim_item
	end },
}

------------------------
---- lsp kind setup ----
------------------------

require('lspkind').init({
	mode = 'symbol_text',
	preset = 'codicons',
	symbol_map = {
		Text = '',
		Method = '',
		Function = '',
		Constructor = '',
		Field = 'ﰠ',
		Variable = '',
		Class = 'ﴯ',
		Interface = '',
		Module = '',
		Property = 'ﰠ',
		Unit = '塞',
		Value = '',
		Enum = '',
		Keyword = '',
		Snippet = '',
		Color = '',
		File = '',
		Reference = '',
		Folder = '',
		EnumMember = '',
		Constant = '',
		Struct = 'פּ',
		Event = '',
		Operator = '',
		TypeParameter = '',
	},
})