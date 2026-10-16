-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- -- Matikan semua visual error/underline merah khusus saat membuka file Markdown

-- Disable red unerline at markdown view
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = false
  end,
})

-- Otomatis aktifkan Word Wrap khusus file Markdown dan Teks biasa
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text", "gitcommit" },
  callback = function()
    -- Turunkan teks ke bawah saat mentok layar
    vim.opt_local.wrap = true

    -- RAPIKAN: Jangan potong kata di tengah-tengah (potong di spasi)
    vim.opt_local.linebreak = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "ampscript", "sfmc" },
  callback = function(ev)
    vim.bo[ev.buf].commentstring = "/* %s */"
  end,
})
