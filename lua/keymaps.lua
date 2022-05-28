------------------------
--- buffer line maps ---
------------------------

vim.cmd "nmap bq <cmd>bdelete<cr>"
vim.cmd "nmap bp <cmd>bprevious<cr>"
vim.cmd "nmap bn <cmd>bnext<cr>"

------------------------
---- nvim tree maps ----
------------------------

vim.cmd "nmap ` <cmd>NvimTreeToggle<cr>"

------------------------
--- toggle term maps ---
------------------------

vim.cmd "nmap <c-z> <cmd>ToggleTerm<cr>"

vim.cmd "autocmd TermEnter term://*toggleterm#* tnoremap <C-z> <Cmd>exe v:count1 . 'ToggleTerm'<CR>"



