# Neovim Lua

![neovim lua](https://raw.githubusercontent.com/hattori-hanz0/neovim-config/main/img/neovim-lua.png)

## Instalacja menadżera pluginów paq-nvim

```
git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim
```

## Pobranie fzy-lua-native

```
cd "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/telescope-fzy-native.nvim/
git submodule update --init --recursive
```

## Instalacjaa pluginów

```
:PaqInstall
```

## Instalacja zależności dla menadżera plików CHADtree

```
:CHADdeps
```

## Skróty klawiszowe

| skrót        | opis                                                                        |
|--------------|-----------------------------------------------------------------------------|
| `<spacja>`   | klawisz **LEADER**                                                          |
| `<leader>;`  | wejście do trybu **COMMAND**                                                |
| `<leader>vs` | dzieli okno pionowo                                                         |
| `<leader>sp` | dzieli okno poziomo                                                         |
| `qq`         | wyjście z edytora `:q`                                                      |
| `j`          | zmapowane jako `gj` - poruszanie się po zawiniętej linii                    |
| `k`          | zmapowane jako `gk` - poruszanie się po zawiniętej linii                    |
| `gj`         | przechodzi do następnej zmiany jeśli plik znajduje się w repozytorium git   |
| `gk`         | przechodzi do poprzedniej zmiany jeśli plik znajduje się w repozytorium git |
| `zn`         | przemapowuje `zn` jako `zm`                                                 |
| `zm`         | przemapowuje `zm` jako `zn`                                                 |
| `gh`         | przechodzi na początek linii                                                |
| `gl`         | przechodzi na koniec linii                                                  |
| `dh`         | usuwa wszystko od kursora do początku linii                                 |
| `dl`         | usuwa wslystko od kursora do końca linii                                    |
| `<leaader>,` | przechodzi do poprzedniego bufora                                           |
| `<leaader>.` | przechodzi do następnego bufora                                             |
| `<tab>`      | porusza się pomiędzy dwoma ostatnio używanymi bbuforami                     |
| `<leader>d`  | usuwa bufor `:bd`                                                           |
| `<leader>b`  | lista otwartych buforów `Telescope buffers`                                 |
| `<leader>n`  | otwiera / zamyka menadżer plików CHADtree                                   |
| `<leader>ss` | zapisuje sesję                                                              |
| `<leader>sl` | odtwarza zapisaną sesję                                                     |



## Skróty klawiszowe vim-surround

| skrót        | opis                                                  |
|--------------|-------------------------------------------------------|
| `<leader>sw` | czeka na wprowadzenie znaku, którym otoczy wyraz      |
| `<leader>sW` | czeka na wprowadzenie znaku, którym otoczy WYRAZ      |
| `<leader>sp` | czeka na wprowadzenie znaku, który otoczy paragraf    |
| `<leader>ss` | czeka na wprowadzenie znaku, którym otoczy linię      |
| `<leader>sd` | czeka na wprowadzenie znaku, którym zostanie usunięty |

## Skróty klawiszowe Telescope

| skrót       | polecenie               |
|-------------|-------------------------|
| `<leader>p` | Telescope find_files    |
| `<leader>r` | Telescope registers     |
| `<leader>g` | Telescope live_grep     |
| `<leader>b` | Telescope buffers       |
| `<leader>j` | Telescope help_tags     |
| `<leader>f` | Telescope file_browser  |
| `<leader>s` | Telescope spell_suggest |
| `<leader>i` | Telescope git_status    |
| `<leader>t` | Telescope tags          |
