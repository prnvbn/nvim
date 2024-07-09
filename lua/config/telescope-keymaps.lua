local builtin = require("telescope.builtin")
local wk = require("which-key")

wk.register({
  f = {
    name = "file",
    f = { builtin.find_files, "fuzzy find files" },
    g = { builtin.live_grep, "grep files" },
    r = { builtin.oldfiles, "recent files" },
  },
  t = {
    name = "telescope",
    c = { builtin.colorscheme, "colorscheme" },
  },
}, { prefix = "<leader>" })
