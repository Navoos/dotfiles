return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "preservim/nerdtree", name = "nerdtree", priority = 1000 },
	{ "junegunn/fzf", name = "fzf", priority = 1000 },
	{'junegunn/fzf.vim', name="fzf-vim", priority = 1000},
	{ "christoomey/vim-tmux-navigator", name="vimtmuxnavigator", priority = 1000,
		  cmd = {
		    "TmuxNavigateLeft",
		    "TmuxNavigateDown",
		    "TmuxNavigateUp",
		    "TmuxNavigateRight",
		    "TmuxNavigatePrevious",
		  },
		  keys = {
		    { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
		    { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
		    { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
		    { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
		    { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		  }
	  }
}
