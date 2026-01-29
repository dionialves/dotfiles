return {
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      -- Garante que as tabelas existem
      opts.settings = opts.settings or {}
      opts.settings.java = opts.settings.java or {}

      -- Mescla as configurações em vez de sobrescrever
      opts.settings.java = vim.tbl_deep_extend("force", opts.settings.java, {
        eclipse = { downloadSources = true },
        maven = { downloadSources = true },
        gradle = { downloadSources = true },
        sources = {
          attachSources = true,
        },
        contentProvider = { preferred = "fernflower" },
      })

      -- IMPORTANTE: retorna opts
      return opts
    end,
  },
}
