return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.window = {
        border = "single",
      }
      return opts
    end,
  },
}
