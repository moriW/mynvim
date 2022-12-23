local modules = {
  'user.conf',
  'user.keymap',
  'user.plugins',
  'user.cmp',
  'user.lsp',
  'user.alpha',
  'user.autopairs',
  'user.bufferline',
  'user.comment',
  'user.indent_blankline',
  'user.lualine',
  'user.nvimtree',
  'user.toggleterm',
  'user.treesitter',
  'user.whichkey',
}

--[[ local modules = { ]]
--[[   'user/conf', ]]
--[[   'user/keymap', ]]
--[[   'user/plugins', ]]
--[[   'user/cmp', ]]
--[[   'user/lsp', ]]
--[[   'user/tools', ]]
--[[ } ]]
--[[]]
-- Refresh module cache
for k, v in pairs(modules) do
  package.loaded[v] = nil
  require(v)
end
