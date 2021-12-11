-- fauxClip
vim.g.SESSION_TYPE = vim.fn.getenv("XDG_SESSION_TYPE")

if SESSION_TYPE == "wayland" then
  vim.g.fauxClip_copy_cmd = "wl-copy"
  vim.g.fauxClip_paste_cmd = "wl-paste"

  vim.g.fauxClip_always_use = 1
else
  -- kopiowanie
  vim.g.fauxClip_copy_cmd = "xclip -f -i -selection clipboard"
  vim.g.fauxClip_copy_primary_cmd = "xclip -f -i"
  vim.g.fauxClip_copy_primary_cmd = "xclip -f -i"
  -- wklejanie
  vim.g.fauxClip_paste_cmd = "xclip -o -selection clipboard"
  vim.g.fauxClip_paste_primary_cmd = "xclip -o"

  vim.g.fauxClip_always_use = 1
end
