return {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        local sources = { null_ls.builtins.formatting.goimports }

        null_ls.setup({ sources = sources })
    end
}
