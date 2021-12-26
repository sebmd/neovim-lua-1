-- cheatsheet
local cheatsheet_status_ok, configs = pcall(require, "cheatsheet")
if not cheatsheet_status_ok then
  return
end

configs.setup({
  bundled_cheatsheets = true,
  bundled_plugin_cheatsheets = true,
  include_only_installed_plugins = true,
})
