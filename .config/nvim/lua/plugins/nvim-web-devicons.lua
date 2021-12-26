-- nvim-web-devicons
local nvim_web_devicons_status_ok, configs = pcall(require, "nvim-web-devicons")
if not nvim_web_devicons_status_ok then
  return
end

configs.setup({
  -- your personnal icons can go here (to override)
  -- DevIcon will be appended to `name`
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      name = "Zsh",
    },
  },
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true,
})
