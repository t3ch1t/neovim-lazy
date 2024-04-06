return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"lua", "go", "c", "bash", "json", "python", "sql", "vim", "vimdoc", "yaml"},
        auto_install = true,
        highlight = { enable = false},
        indent = { enable = true },
      })
    end
  }
}
