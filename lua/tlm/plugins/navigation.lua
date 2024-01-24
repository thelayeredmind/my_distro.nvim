-- This is where I load plugins that help me to navigate the IDE

local build_string_fzf = 'make'
if (vim.loop.os_uname().sysname == 'Windows_NT')
then
  build_string_fzf =
  'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
end
return {
  -- Fuzzy Finder (files, lsp, etc)
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      -- Only load if `make` is available. Make sure you have the system
      -- requirements installed.
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- TODO: Check why telescope-fzf is disabled, eventho windows has built it
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = build_string_fzf,
      },
    },
    opts = {
      defaults = {
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
          },
        },
      },
    }
  },
  
  {
    -- TODO: deleting files with mini files keeps their buffer
    'echasnovski/mini.files',
    version = '*',
    config = true
  }

  -- TODO: Look into marks and https://github.com/LeonHeidelbach/trailblazer.nvim
  -- TODO: Telescope agrolens https://github.com/desdic/agrolens.nvim?tab=readme-ov-file

}
