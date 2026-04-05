vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover,
  {
    border = "double"  -- or "single", "double", "shadow", "none"
  }
)

