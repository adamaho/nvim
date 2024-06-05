return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- specify the specific version of eslint lsp that is working
        ["eslint-lsp@4.8.0"] = {},
      },
    },
  },
}
