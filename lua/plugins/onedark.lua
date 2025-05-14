return {
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- Faz o tema carregar antes dos outros plugins
    config = function()
      require("onedark").setup({
        style = "cool", -- Escolha entre dark, darker, cool, deep, warm, warmer
        transparent = false, -- Fundo transparente se desejar
        term_colors = true, -- Habilita cores no terminal integrado
      })
      --require("onedark").load() -- Aplica o tema
    end,
  },
}
