return {
  'niuiic/typst-preview.nvim',
  dependencies = { 'niuiic/core.nvim' },

  config = function()
    require('typst-preview').setup {
      output_file = function()
        return vim.fn.expand '%:p:h' .. '\\output.pdf'
      end,

      redirect_output = function(original_file, output_file)
        -- Copy PDF instead of symlinking (Windows)
        vim.cmd(string.format('silent !copy /Y "%s" "%s"', original_file, output_file))
      end,

      preview = function(output_file)
        -- Launch Okular (ensure it’s in PATH)
        local core = require 'core'
        core.job.spawn('okular', { output_file }, {}, function() end, function() end, function() end)
      end,

      clean_temp_pdf = true,
    }

    -- Optional keymap
    vim.keymap.set('n', '<leader>tp', function()
      require('typst-preview').preview()
    end, { desc = 'Typst Preview (Okular)' })
  end,
}
