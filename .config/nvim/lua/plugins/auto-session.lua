-- auto-session
-- SaveSession
-- RestoreSession
local as_status_ok, configs = pcall(require, "auto-session")
if not as_status_ok then
  return
end

local sessionopts = {
  log_level = "info",
  auto_session_enable_last_session = false,
  auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
  auto_session_enabled = true,
  auto_save_enabled = true,
  auto_restore_enabled = false,
  auto_session_suppress_dirs = nil,
}

config.setup(sessionopts)
