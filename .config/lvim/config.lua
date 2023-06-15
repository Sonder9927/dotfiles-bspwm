-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
-- add your own keymapping
-- -- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["a"] = {
  name = "Sourcery",
  a = { "<plug>(coc-codeaction-cursor)", "codeaction-cursor" },
  f = { "<plug>(coc-fix-current)", "fix" },
  s = { ":call CocAction('doHover')<cr>", "doHover" },
  l = { ":CocDiagnostics<cr>", "diagnostics" },
  p = { "<plug>(coc-diagnostic-prev)", "prev" },
  n = { "<plug>(coc-diagnostic-next)", "next" },
}

-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black" },
}
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "flake8", filetypes = { "python" } },
  {
    command = "shellcheck",
    args = { "--severity", "warning" },
  },
}

-- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
  {
    "neoclide/coc.nvim",
    branch = "master",
    build = 'yarn install --frozen-lockfile'
  }
  --     {
  --       "folke/trouble.nvim",
  --       cmd = "TroubleToggle",
  --     },
}
