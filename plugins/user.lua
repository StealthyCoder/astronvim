return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    config = function() require("todo-comments").setup() end,
  },
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    config = function()
      require("silicon").setup {
        font = "Victor Mono=34;Noto Color Emoji=34",
        theme = "Catppuccin-mocha",
        background = "#1e1e2e",
        window_title = function() return vim.fn.fnamemodify(vim.fn.expand "%", ":p:.") end,
        output = function() return "~/Pictures/Screenshots/Code/" .. os.date "!%Y-%m-%dT%H-%M-%S" .. "_code.png" end,
      }
    end,
  },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
