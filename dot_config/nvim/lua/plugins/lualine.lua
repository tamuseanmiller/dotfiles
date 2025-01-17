return {
  "nvim-lualine/lualine.nvim",
  enabled = false,
  dependencies = {
    { "dokwork/lualine-ex" },
    { "nvim-lua/plenary.nvim" },
    { "kyazdani42/nvim-web-devicons" },
  },

  config = function()
    local colors = {
      rosewater = "#f4dbd6",
      flamingo = "#f0c6c6",
      pink = "#f5bde6",
      mauve = "#c6a0f6",
      red = "#f7768e",
      maroon = "#ee99a0",
      peach = "#ff9e64",
      yellow = "#e0af68",
      green = "#a6da95",
      teal = "#8bd5ca",
      sky = "#91d7e3",
      sapphire = "#7dc4e4",
      blue = "#7aa2f7",
      lavender = "#b7bdf8",
      text = "#cad3f5",
      subtext1 = "#b8c0e0",
      subtext0 = "#a5adcb",
      overlay2 = "#939ab7",
      overlay1 = "#8087a2",
      overlay0 = "#6e738d",
      surface2 = "#5b6078",
      surface1 = "#494d64",
      surface0 = "#363a4f",
      base = "#24273a",
      mantle = "#1e2030",
      crust = "#181926",
    }

    local theme = {
      normal = {
        a = { fg = colors.peach },
        b = { fg = colors.blue },
        c = { fg = colors.teal },
      },
      insert = { a = { fg = colors.blue } },
      visual = { a = { fg = colors.text } },
      replace = { a = { fg = colors.yellow } },
      command = { a = { fg = colors.red } },
      inactive = {
        a = { fg = colors.green },
        b = { fg = colors.blue },
        c = { fg = colors.green },
      },
    }

    local vim_icon = {
      function()
        return " "
      end,
      --separator = { left = "", right = "" },
      -- color = { fg = colors.orange },
    }

    local filename = {
      "filename",
      color = { fg = colors.mauve },
      file_status = true, -- Displays file status (readonly status, modified status)
      newfile_status = true, -- Display new file status (new file means no write after created)
      path = 0, -- 0: Just the filename
      -- 1: Relative path
      -- 2: Absolute path
      -- 3: Absolute path, with tilde as the home directory
      -- 4: Filename and parent dir, with tilde as the home directory

      shorting_target = 40, -- Shortens path to leave 40 spaces in the window
      -- for other components. (terrible name, any suggestions?)
      symbols = {
        modified = "󰷥", -- Text to show when the file is modified.
        readonly = "", -- Text to show when the file is non-modifiable or readonly.
        unnamed = " - No Name", -- Text to show for unnamed buffers.
        newfile = " - New File",
      },
    }

    local filetype = {
      "filetype",
      icon_only = true,
      colored = true,
      --color = { bg = "#313244" },
      --separator = { left = "", right = "" },
    }

    -- local filetype_tab = {
    -- 	"filetype",
    -- 	icon_only = true,;w
    -- 	colored = true,
    -- 	color = { bg = "#313244" },
    -- }

    -- local buffer = {
    -- 	require 'tabline'.tabline_buffers,
    -- 	--separator = { left = "", right = "" },
    -- }
    --
    -- local tabs = {
    -- 	require 'tabline'.tabline_tabs,
    -- 	--separator = { left = "", right = "" },
    -- }
    --

    local fileformat = {
      "fileformat",
      color = { fg = colors.teal },
      --separator = { left = "", right = "" },
    }

    local encoding = {
      "encoding",
      color = { fg = colors.blue },
      --separator = { left = "", right = "" },
    }

    local branch = {
      "branch",
      color = { fg = colors.overlay1 },
      --separator = { left = "", right = "" },
    }

    local diff = {
      "diff",
      color = { fg = colors.mauve },
      colored = true, -- Displays a colored diff status if set to true
      diff_color = {
        -- Same color values as the general color option can be used here.
        added = "LuaLineDiffAdd", -- Changes the diff's added color
        modified = "LuaLineDiffChange", -- Changes the diff's modified color
        removed = "LuaLineDiffDelete", -- Changes the diff's removed color you
      },
      symbols = { added = "+", modified = "~", removed = "-" }, -- Changes the symbols used by the diff.
    }

    -- local modes = {
    -- 	'mode', -- fmt = function(str) return str:sub(1, 1) end,
    -- 	--color = { fg = "#a6da95" },
    -- }

    local dia = {
      "diagnostics",
      color = { fg = colors.lavender },
      --separator = { left = "", right = "" },
    }
-- stylua: ignore
local colors2 = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

    local bubbles_theme = {
      normal = {
        a = { fg = colors2.black, bg = colors2.violet },
        b = { fg = colors2.white, bg = colors2.grey },
        c = { fg = colors2.white },
      },

      insert = { a = { fg = colors2.black, bg = colors2.blue } },
      visual = { a = { fg = colors2.black, bg = colors2.cyan } },
      replace = { a = { fg = colors2.black, bg = colors2.red } },

      inactive = {
        a = { fg = colors2.white, bg = colors2.black },
        b = { fg = colors2.white, bg = colors2.black },
        c = { fg = colors2.white },
      },
    }
    require("lualine").setup({

      options = {
        icons_enabled = true,
        theme = bubbles_theme,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          winbar = 1000,
        },
      },

      -- sections = {
      -- lualine_a = {
      -- 	-- NOTE: Show only first letter of mode.
      -- 	{
      -- 		"mode",
      -- 		fmt = function(str)
      -- 			return "  " .. str:sub(1, 1)
      -- 		end,
      -- 	},
      -- },
      --   lualine_b = {},
      --   lualine_c = {
      --     filename,
      --     filetype,
      --     branch,
      --     diff,
      --     {
      --       require("noice").api.statusline.mode.get,
      --       cond = require("noice").api.statusline.mode.has,
      --       color = { fg = "#ed8796" },
      --     },
      --   },
      --   lualine_x = {},
      --   lualine_y = {
      --     encoding,
      --     fileformat,
      --   },
      --   lualine_z = {
      --     dia,
      --     "ex.lsp.single",
      --   },
      -- },
      -- inactive_sections = {
      --   lualine_a = {},
      --   lualine_b = {},
      --   lualine_c = { "filename" },
      --   lualine_x = { "location" },
      --   lualine_y = {},
      --   lualine_z = {},
      -- },
      sections = {
        lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
        lualine_b = { "filename", "branch" },
        lualine_c = {
          "%=", --[[ add your center compoentnts here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = { "filetype", "progress" },
        lualine_z = {
          { "location", separator = { right = "" }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
    })
  end,
}
