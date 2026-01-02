return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local lualine_require = require("lualine_require")
    lualine_require.require = require
    local icons = LazyVim.config.icons

    local function center(str, width)
      local len = vim.fn.strdisplaywidth(str)
      if len >= width then
        return str
      end
      local pad = width - len
      local left = math.floor(pad / 2)
      local right = pad - left
      return string.rep(" ", left) .. str .. string.rep(" ", right)
    end

    opts.options.section_separators = { left = "", right = "" }
    opts.options.component_separators = { left = "|", right = "|" }

    opts.sections.lualine_a = { "mode" }

    opts.sections.lualine_b = {
      { "branch" },
      {
        "diff",
        symbols = {
          added = icons.git.added,
          modified = icons.git.modified,
          removed = icons.git.removed,
        },
        source = function()
          local gitsigns = vim.b.gitsigns_status_dict
          if gitsigns then
            return {
              added = gitsigns.added,
              modified = gitsigns.changed,
              removed = gitsigns.removed,
            }
          end
        end,
      },
    }

    opts.sections.lualine_c = {
      {
        "filename",
        path = 1, -- Show relative path
        file_status = true, -- Show file status (readonly status, modified status)
        shorting_target = 40, -- Shortens path to leave 40 spaces in the window
        symbols = {
          modified = "●", -- Text to show when the file is modified.
          readonly = "R", -- Text to show when the file is non-modifiable or
          unnamed = "Untitled", -- Text to show for unnamed buffers.
        },
      },
      {
        "diagnostics",
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
        },
      },
    }

    opts.sections.lualine_x = {
      Snacks.profiler.status(),
      -- Add noice command status to the statusline
      {
        function()
          return require("noice").api.status.command.get()
        end,
        cond = function()
          return package.loaded["noice"] and require("noice").api.status.command.has()
        end,
        color = function()
          return { fg = Snacks.util.color("Statement") }
        end,
      },
      -- Add noice mode to the statusline
      {
        function()
          return require("noice").api.status.mode.get()
        end,
        cond = function()
          return package.loaded["noice"] and require("noice").api.status.mode.has()
        end,
        color = function()
          return { fg = Snacks.util.color("Constant") }
        end,
      },
      -- Add dap status to the statusline
      {
        function()
          return "  " .. require("dap").status()
        end,
        cond = function()
          return package.loaded["dap"] and require("dap").status() ~= ""
        end,
        color = function()
          return { fg = Snacks.util.color("Debug") }
        end,
      },
      -- Add lazy updates to the statusline
      {
        require("lazy.status").updates,
        cond = require("lazy.status").has_updates,
        color = function()
          return { fg = Snacks.util.color("Special") }
        end,
      },
    }

    opts.sections.lualine_y = {
      -- Add filetype to the statusline
      {
        "filetype",
        fmt = string.upper, -- display as UTF-8 instead of utf-8
      },
      -- Add enconding to the statusline
      {
        "encoding",
        fmt = string.upper, -- display as UTF-8 instead of utf-8
      },
      -- Add fileformat to the statusline
      {
        icons_enabled = false,
        fmt = function(str) -- Convert unix/dos/mac to more user friendly names
          local map = { unix = "LF(Unix)", dos = "CRLF(Windows)", mac = "CR(Mac)" }
          return map[str] or str
        end,
        "fileformat",
      },
    }

    opts.sections.lualine_z = {
      {
        -- Replace default location with custom "line/total:col"
        function()
          local lieno = vim.fn.line(".")
          local colno = vim.fn.col(".")
          local total_lines = vim.fn.line("$")
          -- return string.format("%d/%d:%d", lieno, total_lines, colno)
          local s = string.format("%d/%d:%d", lieno, total_lines, colno)
          return center(s, 13)
        end,
      },
      -- Restore the default progress component
      "progress",
    }
  end,
}
