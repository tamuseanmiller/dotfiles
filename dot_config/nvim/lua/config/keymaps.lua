-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local base46 = require('base46')
map("n", "<leader>th", function() base46.toggle_theme() end, { desc = "Toggles the theme" })
map("n", "<leader>ts", function() require("nvchad.themes").open() end, { desc = "Open theme picker" })

map("n", "<leader>ba", function() require('bafa.ui').toggle() end, {desc = "Open buffer view"})
