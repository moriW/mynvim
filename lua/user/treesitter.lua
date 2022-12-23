
---- TreeSitter ----
local status_ok, treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

treesitter_configs.setup {
  ensure_installed = { "java", "tsx", "python", "markdown", "json", "go", "vue", "html", "sql", "yaml" },
  auto_install = true,
  sync_install = false, 
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true},
  rainbow = {
    enable = true,
    extended_mode = true,
  },
  autopairs = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

