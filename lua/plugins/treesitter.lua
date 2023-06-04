return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup {
            highlight = {
                enable = true
            },
        }
    end
}
