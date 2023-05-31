vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
    --open_on_setup = true,
})

local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

vim.keymap.set('n', '<leader>pt', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<tab>', ':NvimTreeFocus<CR>')
