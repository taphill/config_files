local g = vim.g

g.nvim_tree_auto_open = 0 --0 by default, opens the tree when typing `vim $DIR` or `vim`
g.nvim_tree_indent_markers = 1 --0 by default, this option shows indent markers when folders are open
g.nvim_tree_disable_netrw = 0 --1 by default, disables netrw
g.nvim_tree_hijack_netrw = 0 --1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)

g.nvim_tree_icons = {
  default = '',
}
