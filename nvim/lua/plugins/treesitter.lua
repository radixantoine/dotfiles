require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "vim", "go", "svelte", "typescript", "css", "scss" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
