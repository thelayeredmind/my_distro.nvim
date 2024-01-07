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




}
