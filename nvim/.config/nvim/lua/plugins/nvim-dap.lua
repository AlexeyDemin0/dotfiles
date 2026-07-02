return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      { "<F5>", "<cmd>DapContinue<CR>", desc = "Continue / Start" },
      { "<F10>", "<cmd>DapStepOver<CR>", desc = "Step Over" },
      { "<F11>", "<cmd>DapStepInto<CR>", desc = "Step Into" },
      { "<S-F11>", "<cmd>DapStepOut<CR>", desc = "Step Out" },
      { "<F9>", "<cmd>DapToggleBreakpoint<CR>", desc = "Toggle Breakpoint" },
      {
        "<leader>dr",
        function()
          require("dap").restart()
        end,
        desc = "Restart",
      },
      { "<leader>dt", "<cmd>DapTerminate<CR>", desc = "Terminate" },
      { "<leader>de", "<cmd>DapToggleRepl<CR>", desc = "Toggle REPL" },
    },
    config = function()
      local dap = require("dap")

      dap.adapters.lldb = {
        type = "executable",
        command = "lldb-dap",
        args = {},
      }

      dap.configurations.cpp = {
        {
          name = "Launch",
          type = "lldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          args = {},
          cwd = "${workspaceFolder}",
          stopAtBeginningOfMainSubprogram = false,
        },
      }

      dap.configurations.c = dap.configurations.cpp
      dap.configurations.rust = dap.configurations.cpp
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    event = "VeryLazy",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup({
        controls = {
          enabled = true,
          element = "repl",
        },
      })

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },

  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    event = "VeryLazy",
    config = true,
  },
}
