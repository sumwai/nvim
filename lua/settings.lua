local options = {
	expandtab = true,
	tabstop = 2,
	shiftwidth = 2,
	smarttab = true,
	smartindent = true,
	number = true,
	relativenumber = true,
	cursorline = true,
	termguicolors = true,
	completeopt = 'menu,menuone,noselect',
	autoread = true,
}

local variables = {
	mapleader = ' ',
  -- set git message like '3 secs ago'
 	gitblame_date_format = '%r',
  gitblame_ignored_filetypes = {'NvimTree'},
  -- set glow border to rounded
  glow_border = 'rounded',
  -- do not load python provider
  -- loaded_python3_provider = 0,
  -- do not load node provider
  loaded_node_provider = 0,
  -- do not load ruby provider
  loaded_ruby_provider = 0,
  -- do not load perl provider
  loaded_perl_provider = 0,

  -- UltiSnip keybind
  UltiSnipsExpandTrigger="<tab>" ,
  UltiSnipsJumpForwardTrigger="<tab>",
  UltiSnipsJumpBackwardTrigger="<s-tab>",

  -- disable markdown fold
  vim_markdown_folding_disabled=1,
  -- use latex math
  vim_markdown_math = 1,
  vim_markdown_frontmatter = 1,
  vim_markdown_toml_frontmatter = 1,
}

-- vim options
for k, v in pairs(options) do
	vim.o[k] = v
end

-- vim global variables
for k, v in pairs(variables) do
	vim.g[k] = v
end
