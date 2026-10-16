-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- Fungsi untuk delete tanpa yank
local function delete_no_yank(mode)
  local keys = mode == "v" and '"_d' or '"_dd'
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(keys, true, true, true), "n", true)
end

-- Delete baris (dd) tanpa yank
vim.keymap.set("n", "dd", function()
  delete_no_yank("n")
end, { noremap = true, silent = true })

-- Delete visual selection (d) tanpa yank
vim.keymap.set("v", "d", '"_d', { noremap = true, silent = true })

-- Delete karakter (x) tanpa yank
vim.keymap.set({ "n", "v" }, "x", '"_x', { noremap = true, silent = true })

-- Hapus satu kata ke belakang di Insert Mode pakai Option + Backspace (macOS)
vim.keymap.set("i", "<A-BS>", "<C-w>", { desc = "Delete word backwards in insert mode" })
