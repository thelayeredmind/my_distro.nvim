-- This is where plugins are loaded that are used to Edit Buffers
return {

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    lazy = false,
  },
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
  { 'booperlv/nvim-gomove',  opts = {} },
  {
    -- Edit file system as a buffer
    -- NOTE: Keep up with the Idioms of the environment, in this case VIM/NeoVim
    'stevearc/oil.nvim',
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  -- TODO: Add https://github.com/nvim-pack/nvim-spectre
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  -- TODO: Configure Spectre
  {
    'nvim-pack/nvim-spectre',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = true
  }

}
