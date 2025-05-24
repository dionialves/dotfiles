return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false, -- <- força carregar na inicialização
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- macchiato mocha latte frappe
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
