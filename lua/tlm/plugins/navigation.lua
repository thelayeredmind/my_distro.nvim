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
      'desdic/agrolens.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
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
      -- TODO: Configure good keybinds for agrolens
      extensions = {
        agrolens = {
          debug = false,
          same_type = true,
          include_hidden_buffers = false,
          disable_indentation = false,
          aliases = {}
        }
      }
    }
  },
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
    keys = {
      { "<leader>sp", mode = {"n"}, function() require'telescope'.extensions.projects.projects{} end, desc = "Search Projects"}
    }
  },
  {
    -- TODO: deleting files with mini files keeps their buffer
    'echasnovski/mini.files',
    version = '*',
    config = true
  },
  {
    "olimorris/persisted.nvim",
    config = true
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "<leader>fs", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "<leader>Fs", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "Rs", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" }, 
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  }

  
  -- TODO: Look into marks and https://github.com/LeonHeidelbach/trailblazer.nvim

}
