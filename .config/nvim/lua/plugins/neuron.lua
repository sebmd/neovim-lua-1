-- neuron
local neuron_status_ok, configs = pcall(require, "neuron")
if not neuron_status_ok then
  return
end

configs.setup({
  virtual_titles = true,
  mappings = true,
  run = nil, -- function to run when in neuron dir
  neuron_dir = "~/neuron", -- the directory of all of your notes, expanded by default (currently supports only one directory for notes, find a way to detect neuron.dhall to use any directory)
  leader = "gz", -- the leader key to for all mappings, remember with 'go zettel'
})
