local opts = { noremap = true, silent = true }

-- Wrapper function for setting keymaps with descriptions
local function keymap(mode, new, old, _opts, description)
  if description then
    if not _opts then
      _opts = {}
    end
    _opts.desc = description
  end
  vim.api.nvim_set_keymap(mode, new, old, _opts)
end

-- window creation
keymap("n", "<leader>s", ":split<CR>", opts, "Move to top window")
keymap("n", "<leader>v", ":vsplit<CR>", opts, "Move to top window")

-- window navigation
keymap("n", "<C-h>", "<C-w>h", opts, "Move to left window")
keymap("n", "<C-k>", "<C-w>k", opts, "Move to top window")
keymap("n", "<C-j>", "<C-w>j", opts, "Move to bottom window")
keymap("n", "<C-l>", "<C-w>l", opts, "Move to right window")

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts, "Increase window height")
keymap("n", "<C-Down>", ":resize +2<CR>", opts, "Decrease window height")
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts, "Decrease window width")
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts, "Increase window width")

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts, "Next buffer")
keymap("n", "<S-h>", ":bprevious<CR>", opts, "Previous buffer")

-- Insert --
keymap("i", "jk", "<ESC>", opts, "Fast escape to normal mode")

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts, "Indent left and reselect")
keymap("v", ">", ">gv", opts, "Indent right and reselect")

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts, "Move text down")
keymap("n", "<A-j>", ":m .+1<CR>==", opts, "Move text down")
keymap("v", "<A-k>", ":m .-2<CR>==", opts, "Move text up")
keymap("n", "<A-k>", ":m .-2<CR>==", opts, "Move text up")

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts, "Move block down")
keymap("x", "K", ":move '<-2<CR>gv-gv", opts, "Move block up")
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts, "Move block down")
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts, "Move block up")

-- Other QoL mappings
keymap("n", "<leader>w", "<cmd>w!<CR>", opts, "Save")
keymap("n", "<leader>k", "<cmd>bdelete<CR>", opts, "Kill Buffer")
keymap("n", "<leader>p", "<cmd>Lazy<CR>", opts, "Plugin Manager")
keymap("n", "<leader>q", "<cmd>wqall!<CR>", opts, "Quit")
