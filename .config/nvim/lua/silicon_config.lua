local g = vim.g
local cmd = vim.cmd

g.silicon = {
  theme = 'TwoDark',
  font = 'Hack',
  background = '#AAAAFF',
  output = '~/Desktop/silicon-{time:%Y-%m-%d-%H%M%S}.png'
}


cmd "let g:silicon['line-number'] = v:true"
cmd "let g:silicon['round-corner'] = v:true"
cmd "let g:silicon['window-controls'] = v:true"
