plugins = {
    "nvim-lua/plenary.nvim",
    {
        "nvim-treesitter/nvim-treesitter",
	lazy = false,
	cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    	build = ":TSUpdate",
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        lazy = false,
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
	    {
		"<leader>ff",
    	    	function()
		  require("telescope.builtin").find_files()
		end,
    	    }
	}
    },
}
require("plugins.lazy")
require("lazy").setup(plugins)
