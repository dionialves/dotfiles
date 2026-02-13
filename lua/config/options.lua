-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Ajusta a identação
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Desativa o relative number
vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.clipboard = "unnamedplus"

-- Força o agente do Lombok globalmente para o JDTLS
vim.env.JDTLS_JVM_ARGS = "-javaagent:"
  .. vim.fn.expand("$HOME/.m2/repository/org/projectlombok/lombok/1.18.30/lombok-1.18.30.jar")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = "pt_br"
  end,
})
