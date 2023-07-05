local opt = vim.opt
local bo = vim.bo
local g = vim.g
local set_keymap = vim.keymap.set

-- options
opt.cursorline = true

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
-- opt.smartindent = true

opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

opt.number = true
opt.relativenumber = true
opt.numberwidth = 2

opt.signcolumn = "yes"
opt.termguicolors = true
opt.backup = false
opt.writebackup = false
opt.swapfile = false

opt.updatetime = 250

g.mapleader = " "

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    set_keymap('n', 'gD', vim.lsp.buf.declaration, opts)
    set_keymap('n', 'gd', vim.lsp.buf.definition, opts)
    set_keymap('n', 'K', vim.lsp.buf.hover, opts)
    set_keymap('n', 'gi', vim.lsp.buf.implementation, opts)
    set_keymap('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    set_keymap('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    set_keymap('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    set_keymap('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    set_keymap('n', '<space>D', vim.lsp.buf.type_definition, opts)
    set_keymap('n', '<space>rn', vim.lsp.buf.rename, opts)
    set_keymap({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    set_keymap('n', 'gr', vim.lsp.buf.references, opts)
    set_keymap('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
