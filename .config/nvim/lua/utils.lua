-- Wait for lua keymaps (nvim PR #13823)

local a = vim.api

local function map(mod, lhs, rhs, opt)
  a.nvim_set_keymap(mod, lhs, rhs, opt or {})
end

return {map = map}
