return {
  -- Install without configuration
  { "projekt0n/github-nvim-theme", name = "github-theme" },

  -- Or with configuration
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        options = {
          -- Compiled file's destination location
          compile_path = vim.fn.stdpath("cache") .. "/github-theme",
          compile_file_suffix = "_compiled", -- Compiled file suffix
          hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
          hide_nc_statusline = true, -- Override the underline style for non-active statuslines
          transparent = true, -- Disable setting bg (make neovim's background transparent)
          terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
          dim_inactive = false, -- Non focused panes set to alternative background
          module_default = true, -- Default enable value for modules
          styles = { -- Style to be applied to different syntax groups
            comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
            functions = "NONE",
            keywords = "NONE",
            variables = "NONE",
            conditionals = "NONE",
            constants = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
          },
          inverse = { -- Inverse highlight for different types
            match_paren = false,
            visual = false,
            search = false,
          },
          darken = { -- Darken floating windows and sidebar-like windows
            floats = true,
            sidebars = {
              enable = true,
              list = {}, -- Apply dark background to specific windows
            },
          },
          modules = { -- List of various plugins and additional options
            -- ...
          },
        },
        palettes = {},
        specs = {},
        groups = {},
      })
    end,
  },
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
    lazy = false, -- Recommended
    -- ft = "markdown" -- If you decide to lazy-load anyway

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },
}
