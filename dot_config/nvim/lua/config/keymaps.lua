require "config.ui"

-- Easy scape from vim
vim.cmd [[
fun! SetupCommandAlias(from, to)
	exec 'cnoreabbrev <expr> '.a:from
		\ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
		\ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias("Wq","wq")
call SetupCommandAlias("wQ","wq")
call SetupCommandAlias("WQ","wq")
]]

local Snacks = require "snacks"
-- Remap C-x to close buffer
vim.keymap.set("", "<C-x>", function()
  Snacks.bufdelete()
end, { desc = "Close the current buffer" })

-- Move current line
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

local Util = require "lazyvim.util"
vim.keymap.set("n", "<C-/>", function()
  Util.terminal(nil, {
    border = "solid",
  })
end, { desc = "Term with border" })

-- Remap H(High) M(Middle) L(Low)
vim.keymap.set("n", "<leader>H", ":normal!H<cr>", { silent = true })
vim.keymap.set("n", "<leader>M", ":normal!M<cr>", { silent = true })
vim.keymap.set("n", "<leader>L", ":normal!L<cr>", { silent = true })

vim.keymap.set("n", ">", ":tabnext<cr>", { silent = true })
vim.keymap.set("n", "<", ":tabprevious<cr>", { silent = true })

vim.keymap.set("n", "<S-R>", ":e!<cr>", { silent = true })

-- Remap floating terminal
vim.keymap.set("n", "<C-/>", ":split term://%:p:h//bash", { silent = true })

-- Close neovim with F12
vim.keymap.set("n", "<F12>", ":wqa!<CR>", { noremap = true, silent = true })
