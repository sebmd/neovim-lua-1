-- gnupg
local g = vim.g -- a table to access global variables
local GPG_ID = os.getenv("GPG_ID")
g.GPGPreferSymmetric = 0
g.GPGUseAgent = 1
g.GPGPreferArmor = 1
g.GPGPreferSign = 1
-- ID klucza pobiera ze zmienne systemowej $GPG_ID, należy ustawić ją w swojej powłoce systemowej
-- export GPG_ID="0x------------"
g.GPGDefaultRecipients = "[$GPG_ID]"
g.GPGFilePattern = "*{gpg,asc,gpg.md}"
