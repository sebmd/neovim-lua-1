-- gnupg
local GPG_ID = os.getenv("GPG_ID")
g.GPGPreferSymmetric = 0
g.GPGUseAgent = 1
g.GPGPreferArmor = 1
g.GPGPreferSign = 1
-- ID klucza pobiera ze zmienne systemowej $GPG_ID należy ustawić ją Write swojej powłoce systemowej
g.GPGDefaultRecipients = "[$GPG_ID]"
g.GPGFilePattern = "*{gpg,asc,gpg.md}"
