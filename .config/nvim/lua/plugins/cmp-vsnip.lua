-- cmp-vsnip.lua
local cmp_vsnip_status_ok, configs = pcall(require, "cmp")
if not cmp_vsnip_status_ok then
  return
end

configs.setup({
  sources = {
    { name = "vsnip" },
  },
})
