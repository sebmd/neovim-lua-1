-- gnupg
local GPG_ID = os.getenv("GPG_ID")
vim.g.GPGPreferSymmetric = 0
vim.g.GPGUseAgent = 1
vim.g.GPGPreferArmor = 1
vim.g.GPGPreferSign = 1
-- ID klucza pobiera ze zmienne systemowej $GPG_ID należy ustawić ją Write swojej powłoce systemowej
vim.g.GPGDefaultRecipients = "[$GPG_ID]"
vim.g.GPGFilePattern = "*{gpg,asc,gpg.md}"
