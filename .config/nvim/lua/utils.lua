-- Wait for lua keymaps (nvim PR #13823)

--local function map(lhs, rhs, mode)
 -- vim.api.nvim_set_keymap(
  --  mode or 'n',
   -- lhs,
    --'<cmd>' .. rhs .. '<cr>',
  --  {noremap=true, silent=true}
 -- )
--end
local a = vim.api

local function map(mod, lhs, rhs, opt)
  a.nvim_set_keymap(mod, lhs, rhs, opt or {})
end

return {map = map}
