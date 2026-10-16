vim.filetype.add({
  extension = {
    amp = "ampscript",
    ampscript = "ampscript",
    ssjs = "ssjs",
  },
})

-- Auto-detect SFMC content in .html files (same markers the VS Code extension uses)
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  pattern = "*.html",
  callback = function(ev)
    local head = table.concat(vim.api.nvim_buf_get_lines(ev.buf, 0, 300, false), "\n")
    local lower = head:lower()
    if
      head:find("%%[", 1, true)
      or head:find("%%=", 1, true)
      or lower:match("<script[^>]*language%s*=%s*['\"]ampscript['\"]")
      or lower:match("<script[^>]*runat%s*=%s*['\"]server['\"]")
    then
      vim.bo[ev.buf].filetype = "sfmc"
    end
  end,
})
