require('neovim-project').setup({

  -- Path to store history and sessions
  datapath = vim.fn.stdpath("data"), -- ~/.local/share/nvim/
  last_session_on_startup = false,

  projects = {
    "C:\\Users\\Seb\\AppData\\Local\\*",
    "D:\\Dev\\projects\\*",
    "D:\\Dev\\projects\\_COLABS\\*",
    "D:\\Dev\\projects\\_CONTRIBUTOR\\*"
  },
  -- Overwrite some of Session Manager options
  session_manager_opts = {
    autosave_ignore_dirs = {
      vim.fn.expand("~"), -- don't create a session for $HOME/
      "/tmp",
    },
    autosave_ignore_filetypes = {
      -- All buffers of these file types will be closed before the session is saved
      "ccc-ui",
      "gitcommit",
      "gitrebase",
      "qf",
      "toggleterm",
    },
  },
})
