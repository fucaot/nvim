vim.cmd("set hidden")

vim.opt.updatetime = 100


local keyset = vim.keymap.set

-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- 补全设置
-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)


-- CocInstall coc-clangd
-- CocInstall coc-go
-- CocInstall coc-java
-- CocInstall coc-json
-- CocInstall coc-rls
--
--
-- coc-html
-- coc-python
-- coc-phpls
-- coc-clangd
-- coc-actions


-- vim.cmd(
--     [[
--         inoremap <silent><expr> <TAB>
--         \ coc#pum#visible() ? coc#pum#next(1) :
--         \ CheckBackspace() ? "\<Tab>" :
--         \ coc#refresh()
--         inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
--         
--         " Make <CR> to accept selected completion item or notify coc.nvim to format
--         " <C-g>u breaks current undo, please make your own choice
--         inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
--                                       \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
--         
--         function! CheckBackspace() abort
--           let col = col('.') - 1
--           return !col || getline('.')[col - 1]  =~# '\s'
--         endfunction
--     ]]
-- )
