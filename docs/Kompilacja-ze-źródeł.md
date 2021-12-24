# Kompilacja ze źródeł

Artykuł dotyczący kompilacji Neovim https://github.com/neovim/neovim/wiki/Building-Neovim

Skrypt pobiera ostatnią wersję stabilną

```bash
#!/usr/bin/env bash

NAME=neovim
mkdir -p $NAME

wget -O $NAME.tgz  https://github.com/neovim/neovim/archive/refs/tags/stable.tar.gz
tar zxvf $NAME.tgz -C $NAME --strip-components=1
rm $NAME.tgz
cd $NAME

make distclean
make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=$HOME/.local/nvim
make install
```
