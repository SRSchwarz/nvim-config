plugins = {
    "nvim-lua/plenary.nvim",
    {
        "nvim-treesitter/nvim-treesitter",
	lazy = false,
	cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    	build = ":TSUpdate",
    }
}
require("plugins.lazy")
require("lazy").setup(plugins)
