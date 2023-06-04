return {
    "windwp/nvim-autopairs",
    opts = {
        fast_wrap = {},
        disable_filetype = { "TelescopePrompt", "vim" },
        config = function(_, opts)
            local autopairs = require("nvim-autopairs")
            local cmp = require("cmp")
            local cmp_autopairs = require("nvim-autopairs.completion.cmp")


            autopairs.setup(opts)
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end
    }
}
