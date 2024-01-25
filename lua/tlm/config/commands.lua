-- Custom live_grep function to search in git root
local function live_grep_git_root()
  local git_root = require("tlm.utils").find_git_root()
  if git_root then
    require('telescope.builtin').live_grep {
      search_dirs = { git_root },
    }
  end
end

vim.api.nvim_create_user_command('LiveGrepGitRoot', live_grep_git_root, {})

require('telescope').load_extension('projects')
require('telescope').load_extension('agrolens')
