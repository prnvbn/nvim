return {
  {
    "windwp/nvim-autopairs",
    event = "VeryLazy",
    opts = {
      enable_check_bracket_line = false,
      ignored_next_char = "[%w%.]",
      disable_filetype = { "TelescopePrompt", "spectre_panel" },
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {},
    -- in visual mode, use S( to wrap stuff in brackets
    -- in insert mode, use ysw( to wrap the word in brackets (ys{motion}{char})
    --
    --
    --
    -- examples from the readme
    --     Old text                    Command         New text
    -- -----------------------------------------------------------------------------
    -- surround_words             ysiw)           (surround_words)
    -- make strings               ys$"            "make strings"
    -- [delete around me!]        ds]             delete around me!
    -- remove <b>HTML tags</b>    dst             remove HTML tags
    -- 'change quotes'            cs'"            "change quotes"
    -- or tag types        csth1<CR>       <h1>or tag types</h1>
    -- delete(function calls)     dsf             function calls
  },
}
