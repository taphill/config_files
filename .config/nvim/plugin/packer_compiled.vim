" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/taylorphillips/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/taylorphillips/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/taylorphillips/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/taylorphillips/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/taylorphillips/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  fzf = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-lspfuzzy"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["vim-endwise"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/vim-endwise"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-indent-object"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/vim-indent-object"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/vim-javascript"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/vim-rails"
  },
  ["vim-silicon"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/vim-silicon"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-textobj-entire"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/vim-textobj-entire"
  },
  ["vim-textobj-line"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/vim-textobj-line"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/vim-textobj-user"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/Users/taylorphillips/.local/share/nvim/site/pack/packer/start/vim-vinegar"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
