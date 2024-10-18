-- number each line
vim.opt.number = true
vim.opt.relativenumber = true  -- Relative line numbers for other lines

-- Exit Insert Mode by typing 'jk'
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })

-- You can add more key mappings below
-- vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { noremap = true, silent = true })


-- change leader
vim.g.mapleader = " "

-- deactivate backward compatibility with vi
vim.opt.compatible = false

-- " deactivate being asked to save buffer when switching buffers
vim.opt.hidden = true

-- " set guicolors
vim.opt.termguicolors = true
--
--
-- " file plugins
vim.cmd("filetype plugin on")
--
--
-- " plugins
require("config.lazy")
require("plugins")

-- " colorscheme
vim.cmd("colorscheme catppuccin")


-- Mapping for NERDTree

-- Map <leader>n to NERDTreeFocus
vim.keymap.set('n', '<leader>n', ':NERDTreeFocus<CR>', { silent = true })

-- Map <C-n> to open NERDTree
vim.keymap.set('n', '<C-n>', ':NERDTree<CR>', { silent = true })

-- Map <C-t> to toggle NERDTree
vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>', { silent = true })

-- Map <C-f> to NERDTreeFind
vim.keymap.set('n', '<C-f>', ':NERDTreeFind<CR>', { silent = true })


-- close NERDTRee if it is the last standing page
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    -- Check if there is only one tab and one window open
    if vim.fn.tabpagenr('$') == 1 and vim.fn.winnr('$') == 1 then
      -- Check if the current buffer is NERDTree
      local bufname = vim.api.nvim_buf_get_name(0)
      if bufname:match("NERD_tree_") then
        vim.cmd("quit")
      end
    end
  end,
})


-- Optimized autosave for modified buffers
local save_if_modified = function()
  if vim.bo.modified then
    vim.cmd('silent! write')
  end
end

-- Set up autocommand for optimized autosave
vim.api.nvim_create_autocmd({"InsertLeave", "TextChanged", "BufLeave"}, {
  pattern = "*",
  callback = save_if_modified,
})

-- Autosave after 1 second of inactivity
vim.opt.updatetime = 1000  -- 1000ms = 1 second

-- Save only modified buffers after inactivity
vim.api.nvim_create_autocmd({"CursorHold", "CursorHoldI"}, {
  pattern = "*",
  callback = save_if_modified,
})

-- Brought you by CHAT-GPT

