local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

toggleterm.setup{
  open_mapping = [[<c-\>]],
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  persist_size = true,
  persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
  direction = 'horizontal', -- 'vertical' | 'horizontal' | 'tab' | 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  auto_scroll = true, -- automatically scroll to the bottom on terminal output
}


