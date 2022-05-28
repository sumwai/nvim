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
}

-- vim options
for k, v in pairs(options) do
	vim.o[k] = v
end

-- vim global variables
for k, v in pairs(variables) do
	vim.g[k] = v
end
