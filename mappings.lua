-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  i = {
    ["<A-j>"] = { "<Esc>:m .+1<CR>==gi", desc = "Move current line up one time" },
    ["<A-k>"] = { "<Esc>:m .-2<CR>==gi", desc = "Move current line down one time" },
  },
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<A-j>"] = { ":m .+1<CR>==", desc = "Move current line down one time" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "Move current line up one time" },
    ["<S-l>"] = { "<cmd>bnext<cr>", desc = "Previous buffer" },
    ["<S-h>"] = { "<cmd>bprevious<cr>", desc = "Previous tab" },
    ["<Leader>aa"] = { ":silent :%y+ <CR>", desc = "Copy whole buffer content" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  x = {
    ["<A-j>"] = { ":move '>+1<CR>gv-gv", desc = "Move current line down one time" },
    ["<A-k>"] = { ":move '<-2<CR>gv-gv", desc = "Move current line up one time" },
  },
}
