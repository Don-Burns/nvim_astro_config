return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- set a fallback severity for diagnostics not using levels
    -- null_ls.setup({ fallback_severity = vim.diagnostic.severity.HINT })

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
      -- add cspell spell checking
      null_ls.builtins.diagnostics.cspell.with({
        -- change level of the diagnostic
        diagnostics_postprocess = function(diagnostic)
          diagnostic.severity = vim.diagnostic.severity.INFO
        end
      }),
      null_ls.builtins.code_actions.cspell,
      -- markdown linting
      null_ls.builtins.diagnostics.markdownlint,
      null_ls.builtins.formatting.black,
    }
    return config -- return final config table
  end,
}
