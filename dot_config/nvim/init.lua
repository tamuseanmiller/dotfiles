vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46_cache/"

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- (method 1, For heavy lazyloaders)
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

-- vim.cmd("colorscheme rose-pine")
