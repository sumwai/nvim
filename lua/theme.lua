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
    offsets = {{ filetype = "NvimTree", text = "File Explorer", text_align = "center" }},
  }
}

------------------------
---- windline setup ----
------------------------

require('wlsample.bubble2')

------------------------
-- toggle term setup ---
------------------------

require('toggleterm').setup()

------------------------
--- nvim tree setup ----
------------------------

require('nvim-tree').setup()
