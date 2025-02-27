-- Bootstrap lazy
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- This has to be set before initializing lazy
vim.g.mapleader = " "

-- Initialize lazy with dynamic loading of anything in the plugins directory
require("lazy").setup("plugins", {
  change_detection = {
    enabled = true, -- automatically check for config file changes and reload the ui
    notify = false, -- turn off notifications whenever plugin changes are made
  },
})

-- These modules are not loaded by lazy
require "core.options"
require "core.keymaps"

-- hide tmux status line
-- local function nvim_instance_count()
--   local handle = io.popen "pgrep -xc nvim"
--   local result = handle:read "*a"
--   handle:close()
--   return tonumber(result) or 0
-- end
--
-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     vim.cmd "silent !tmux set status off"
--   end,
-- })
--
-- vim.api.nvim_create_autocmd("VimLeave", {
--   callback = function()
--     if nvim_instance_count() <= 2 then
--       vim.cmd "silent !tmux set status on"
--     end
--   end,
-- })
