return {
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && npm install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
      --- only refreshes when saving the file or leaving insert mode
      vim.g.mkdp_refresh_slow = 1
      --- use a custom port to start server or empty for random
      vim.g.mkdp_port = '9090'
    end,
    ft = { 'markdown' },
  },
}
