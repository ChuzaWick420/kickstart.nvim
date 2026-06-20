local M = {}

local function split_paths(str)
  local result = {}
  for path in string.gmatch(str or '', '([^;]+)') do
    table.insert(result, path)
  end
  return result
end

function getFlags()
  local directories = split_paths(vim.env.INCLUDE_DIRECTORIES)

  local flags = {}

  for key, value in pairs(directories) do
    table.insert(flags, '-I')
    table.insert(flags, value)
  end

  return flags
end

function M.setup()
  local lspconfig = require 'lspconfig'

  lspconfig.clangd.setup {
    -- custom settings
    cmd = {
      'clangd',
    },

    init_options = {
      fallbackFlags = getFlags(),
    },
  }
end

return M
