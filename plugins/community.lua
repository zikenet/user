return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript-deno" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.dart" },
  { import = "astrocommunity.fuzzy-finder" },
  -- { import = "astrocommunity.pack.dart" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
