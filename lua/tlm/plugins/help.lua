-- Let's face it, I am a beginner, so I need some help, here is what helps me

return {
  { 'folke/which-key.nvim', opts = {} },
  -- TODO: Add https://github.com/AckslD/nvim-neoclip.lua
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {}
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  }
}
