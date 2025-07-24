local M = {}

function M.setup()
  local lspconfig = require 'lspconfig'
  lspconfig.clangd.setup {
    -- your custom settings here
    cmd = { 'clangd' },
    init_options = {
      -- Replace with the actual path to your SFML include directory
      fallbackFlags = {
        '-I',
        'D:\\External dependencies\\libraries\\SFML-2.6.2\\include',
        '-I',
        'D:\\External dependencies\\libraries\\nlohmann-json-3.11.3\\single_include\\nlohmann',
        'I',
        'D:\\External dependencies\\libraries\\OpenGL\\freeglut\\include',
      },
    },
  }
end

return M
