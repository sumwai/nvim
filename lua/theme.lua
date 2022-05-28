------------------------
-- github theme setup --
------------------------
require('github-theme').setup()

------------------------
--- bufferline setup ---
------------------------

vim.opt.termguicolors = true

require('bufferline').setup{
	options = {
		offsets = { {
			filetype = 'NvimTree',
			text = 'File Explorer',
			text_align = 'center',
		} },
		-- buf contains a "name", "path" and "bufnr"
		name_formatter = function(buf)
			-- remove extension from markdown files for example
			if buf.name:match('%.md') then
				return vim.fn.fnamemodify(buf.name, ':t:r')
			end
		end,
	},
}

------------------------
---- windline setup ----
------------------------

require('wlsample.bubble2')

------------------------
-- toggle term setup ---
------------------------

require('toggleterm').setup{
	direction = 'float',
	float_opts = {
		border = 'single',
		winblend = 3,
	},
}

------------------------
--- nvim tree setup ----
------------------------

require('nvim-tree').setup()