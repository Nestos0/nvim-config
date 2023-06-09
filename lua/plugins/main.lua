return{
  {"folke/which-key.nvim",
    event = "VeryLazy",
    init = function ()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {

    }
  },
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  "mhinz/vim-startify",
  { "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  config = function ()
      vim.cmd.colorscheme ("catppuccin")
  end,
  },
  "dcampos/nvim-snippy",
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "euclidianAce/BetterLua.vim",
  "antosha417/nvim-lsp-file-operations",
  "echasnovski/mini.base16",
  {"ggandor/leap.nvim",
    config = function ()
    -- leap config

    require('leap').add_default_mappings()

    -- Disable auto jump first match

    -- require('leap').opts.safe_labels = {}

    require('leap').opts.highlight_unlabeled_phase_one_targets = true

    vim.keymap.set({'x', 'o', 'n'}, 'r', '<Plug>(leap-forward-to)')

    vim.keymap.set({'x', 'o', 'n'}, 'R', '<Plug>(leap-backward-to)')
    end,
  },
  {"ggandor/flit.nvim",
    config = function ()
        require('flit').setup {
  keys = { f = 'f', F = 'F', t = 't', T = 'T' },
  -- A string like "nv", "nvo", "o", etc.
  labeled_modes = "v",
  multiline = true,
  -- Like `leap`s similar argument (call-specific overrides).
  -- E.g.: opts = { equivalence_classes = {} }
  opts = {}
}
    end,
  },
  {"vim-airline/vim-airline",
  lazy = false,
  config = function ()
    vim.g.airline_theme = "luna"
  end,
  },
  "vim-airline/vim-airline-themes",
  "nvim-treesitter/nvim-treesitter",
  {"jiangmiao/auto-pairs", lazy = false },
  "preservim/nerdcommenter",
  "instant-markdown/vim-instant-markdown",
  "plasticboy/vim-markdown",
  {"godlygeek/tabular", lazy = false},
  {"Yggdroot/indentLine", lazy = false},
  "psliwka/vim-smoothie",
  "iamcco/mathjax-support-for-mkdp",
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    -- :MasonUpdate updates registry contents
  },
  "williamboman/mason-lspconfig.nvim",
  {"iamcco/markdown-preview.nvim",
    config = function ()
        vim.keymap.set('n', "<F8>", "<Plug>MarkdownPreview", {silent = true})
        vim.keymap.set('i', "<F8>", "<Plug>MarkdownPreview", {silent = true})
        vim.keymap.set('n', "<F9>", "<Plug>StopMarkdownPreview", {silent = true})
        vim.keymap.set('i', "<F9>", "<Plug>StopMarkdownPreview", {silent = true})
    end,
    run = function()
        vim.fn["mkdp#util#install"]()
    end,
  }
}
