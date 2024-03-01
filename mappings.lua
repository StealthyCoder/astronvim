-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["gk"] = { function() vim.lsp.buf.hover() end, desc = "Hover symbol details" },
    -- mappings seen under group name "Buffer"
    ["<leader>bd"] = { "<cmd>%bd | e# | bd#<cr>", desc = "Close all buffers except this one" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>fT"] = { "<cmd>:TodoTelescope<cr>", desc = "Search all todo comments" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- Setup tmux navigator bindings
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<cr>", desc = "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<cr>", desc = "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<cr>", desc = "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<cr>", desc = "window up" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
