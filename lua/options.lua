vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.clipboard = 'unnamedplus'

vim.o.number = true
vim.o.relativenumber = true

vim.o.signcolumn = 'yes'

vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.updatetime = 300

vim.o.termguicolors = true 
vim.o.mouse = 'a'

vim.o.foldmethod = 'manual'
vim.o.foldlevel = 99
vim.o.foldenable = true

vim.keymap.set('n', '<leader>z', 'za', { desc = 'toggle fold' })
vim.keymap.set('n', '<leader>o', 'zo', { desc = 'open fold' }) 
vim.keymap.set('n', '<leader>c', 'zc', { desc = 'close fold' })
vim.keymap.set('n', '<leader>O', 'zR', { desc = 'open all folds' })
vim.keymap.set('n', '<leader>C', 'zM', { desc = 'close all folds' })

vim.keymap.set('n', 'gn', ':tabnew<CR>', {noremap = true, silent = true})

vim.keymap.set('n', 'gy', function() 
	vim.cmd('tabnew')
	require("yazi").yazi()
end, {noremap = true, silent = true, desc = "Open yazi in new tab"}
)

-- Paste from previous register
vim.keymap.set('n', ',p', '"0p')
vim.keymap.set('n', ',P', '"0P')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-f>', '<C-f>zz')
vim.keymap.set('n', '<C-b>', '<C-b>zz')
vim.keymap.set('n', 'Y', 'yy')

vim.o.showtabline = 2
vim.o.tabline = "%!v:lua.MyTabLine()"

function _G.MyTabLine()
  local s = ''
  for i = 1, vim.fn.tabpagenr('$') do
    local winnr = vim.fn.tabpagewinnr(i)
    local buflist = vim.fn.tabpagebuflist(i)
    local bufnr = buflist[winnr]
    local bufname = vim.fn.bufname(bufnr)
    local filename = vim.fn.fnamemodify(bufname, ":t") -- strip path to get just filename

    if i == vim.fn.tabpagenr() then
      s = s .. '%#TabLineSel#'
    else
      s = s .. '%#TabLine#'
    end

	--s = s .. ' ' .. i .. ': ' .. (filename ~= '' and filename or '[No Name]') .. ' '
	s = s .. ' ' .. (filename ~= '' and filename or '[No Name]' .. ' ') .. ' '
  end
  s = s .. '%#TabLineFill#'
  return s
end
