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
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },
    -- ["<leader>th"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "ToggleTerm horizontal split" },
    ["<leader>th1"] = { "<cmd>ToggleTerm size=15 direction=horizontal<cr>", desc = "ToggleTerm horizontal split 1" },
    ["<leader>th2"] = { "<cmd>2ToggleTerm size=15 direction=horizontal<cr>", desc = "ToggleTerm horizontal split 2" },
    ["<leader>th3"] = { "<cmd>3ToggleTerm size=15 direction=horizontal<cr>", desc = "ToggleTerm horizontal split 3" },
    ["<leader>tv1"] = { "<cmd>1ToggleTerm size=80 direction=vertical<cr>", desc = "ToggleTerm vertical split 1" },
    ["<leader>tv2"] = { "<cmd>2ToggleTerm size=80 direction=vertical<cr>", desc = "ToggleTerm vertical split 2" },
    ["<leader>tv3"] = { "<cmd>3ToggleTerm size=80 direction=vertical<cr>", desc = "ToggleTerm vertical split 3" },

    -- mappings seen under group name "Buffer"
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
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
