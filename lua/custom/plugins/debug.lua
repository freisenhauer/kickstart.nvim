return {
  'rcarriga/nvim-dap-ui',
  dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
  config = function()
    require('dap.ext.vscode').load_launchjs(nil, {})

    local dap, dapui = require 'dap', require 'dapui'
    dap.listeners.after.event_initialized['dapui_config'] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated['dapui_config'] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited['dapui_config'] = function()
      dapui.close()
    end

    vim.fn.sign_define('DapBreakpoint', { text = '🟥', texthl = '', linehl = '', numhl = '' })
    vim.fn.sign_define('DapStopped', { text = '▶️', texthl = '', linehl = '', numhl = '' })

    vim.keymap.set('n', '<F5>', require('dap').continue)
    vim.keymap.set('n', '<F8>', require('dap').step_over)
    vim.keymap.set('n', '<F7>', require('dap').step_into)
    vim.keymap.set('n', '<F9>', require('dap').step_out)
    vim.keymap.set('n', '<leader>b', require('dap').toggle_breakpoint)
    vim.keymap.set('n', '<leader>td', require('dap-go').debug_test)
  end,
}
