local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
  return
end

-- require 'nvim-treesitter.install'.compilers = { "clang" }

require("base46").load_highlight "treesitter"

local options = {
  ensure_installed = {
    "lua",
    "python",
    "typescript",
    "css",
    "html",
    "javascript",
    "json",
    "scss",
    "yaml",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = {
    enable = true,
  },
}

-- check for any override
options = require("core.utils").load_override(options, "nvim-treesitter/nvim-treesitter")

treesitter.setup(options)
