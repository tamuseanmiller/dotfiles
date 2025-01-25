return {
  -- Install without configuration
  -- { "projekt0n/github-nvim-theme", name = "github-theme" },

  -- best to add to dependencies of `neotest`:
  --   { "alfaix/neotest-gtest" },
  --   {
  --     "nvim-neotest/neotest",
  --     dependencies = {
  --       "nvim-neotest/nvim-nio",
  --       "nvim-lua/plenary.nvim",
  --       "alfaix/neotest-gtest",
  --     },
  --     -- opts = {
  --     -- Can be a list of adapters like what neotest expects,
  --     -- or a list of adapter names,
  --     -- or a table of adapter names, mapped to adapter configs.
  --     -- The adapter will then be automatically loaded with the config.
  --     -- adapters = { "neotest-gtest" },
  --     -- Example for loading neotest-golang with a custom config
  --     -- adapters = {
  --     --   ["neotest-golang"] = {
  --     --     go_test_args = { "-v", "-race", "-count=1", "-timeout=60s" },
  --     --     dap_go_enabled = true,
  --     --   },
  --     -- },
  --     -- },
  --     -- require("neotest").setup(opts),
  --     require("neotest").setup({ adapters = { require("neotest-gtest").setup({}) } }),
  --   },
  {
    "OXY2DEV/markview.nvim",
    enabled = false,
    lazy = false, -- Recommended
    -- ft = "markdown" -- If you decide to lazy-load anyway

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },

  {
    "gelguy/wilder.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "romgrk/fzy-lua-native",
    },
    config = function()
      local wilder = require("wilder")

      wilder.setup({ modes = { ":", "/", "?" } })

      -- Define custom highlight groups

      wilder.set_option(
        "renderer",
        wilder.popupmenu_renderer(wilder.popupmenu_border_theme({
          min_width = "20%", -- minimum height of the popupmenu, can also be a number
          max_height = "15%", -- to set a fixed height, set max_height to the same value
          reverse = 0, -- if 1, shows the candidates from bottom to top
          prompt_position = "top",
          highlighter = {
            wilder.lua_pcre2_highlighter(), -- Requires luarocks install pcre2
            wilder.lua_fzy_highlighter(), -- Requires fzy-lua-native
          },
          highlights = {
            default = wilder.make_hl(
              "WilderPopupMenu",
              "Pmenu",
              { { a = 1 }, { a = 1 }, { background = "#1E212B" } } -- Adjust background color
            ),
            accent = wilder.make_hl(
              "WilderAccent",
              "Pmenu",
              { { a = 1 }, { a = 1 }, { foreground = "#58FFD6", background = "#1e1e2e" } }
            ),
          },
          -- 'single', 'double', 'rounded' or 'solid'
          -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
          border = "rounded",
        }))
      )
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    enabled = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- Set lualine theme to catppuccin
      require("lualine").setup({
        options = {
          theme = "catppuccin",
        },
      })
    end,
  },
  --
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  -- },
  --
  -- -- feline for the bottom bar
  -- {
  --   "freddiehaddad/feline.nvim",
  --   opts = {},
  --   config = function(_, opts)
  --     local ctp_feline = require("catppuccin.groups.integrations.feline")
  --
  --     ctp_feline.setup()
  --
  --     require("feline").setup({
  --       components = ctp_feline.get(),
  --     })
  --   end,
  -- },
  -- {
  --   "lewis6991/gitsigns.nvim",
  --   enabled = false,
  -- },
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- enabled = false,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  },

  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   config = function()
  --     -- empty setup using defaults
  --     require("nvim-tree").setup()
  --   end,
  -- },

  -- {
  --   "stevearc/oil.nvim",
  --   ---@module 'oil'
  --   ---@type oil.SetupOpts
  --   opts = {},
  --   -- Optional dependencies
  --   dependencies = { { "echasnovski/mini.icons", opts = {} } },
  --   -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  -- },
}
