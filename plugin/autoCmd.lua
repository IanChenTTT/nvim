-- Create a group for go format autocmds
local group = vim.api.nvim_create_augroup("GoFmtOnSave", { clear = true })

-- Set up BufWritePost autocmd
vim.api.nvim_create_autocmd("BufWritePost", {
  group = group,
  pattern = "*.go",
  callback = function()
    local file = vim.fn.expand("%:p")  -- full path to current file
    -- Run gofmt on the file
    vim.fn.jobstart({ "gofmt", "-w", file }, {
      on_exit = function()
        -- Reload the file silently to show the formatted content
        vim.cmd("e!")
        vim.notify("gofmt applied", vim.log.levels.INFO)
      end,
    })
  end,
})

