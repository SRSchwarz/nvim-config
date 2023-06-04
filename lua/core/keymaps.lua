local g = vim.g
local keymap = vim.keymap
local api = vim.api
local cmd = vim.cmd
local lsp = vim.lsp


g.mapleader = " "

keymap.set("n", "<leader>pf", ":Oil<CR>:<Esc>")

keymap.set("n", "gd", lsp.buf.definition)
keymap.set("n", "<leader>h", lsp.buf.hover)
keymap.set("n", "<leader>ca", lsp.buf.code_action)
keymap.set("n", "<leader>rn", lsp.buf.rename)
keymap.set("n", "<leader>rr", lsp.buf.references)
-- TODO keymap.set("i", "<C-h>", lsp.buf.signature_help)


api.nvim_create_user_command("W", ":w", {})
