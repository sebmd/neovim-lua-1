#!/usr/bin/env bash

. ~/bin/colors

echo

case $(~/bin/detect-os sys) in
    Fedora)
        msg_info "Wykryłem system Fedora"
        FEDORA=1
        ;;
    Ubuntu)
        msg_info "Wykryłem system Ubuntu"
        UBUNTU=1
        ;;
    Arch)
        msg_info "Wykryłem system Arch"
        ARCH=1
        ;;
esac

echo

function check() {
    if [[ $(command -v "$1") ]]; then
        msg_ok "$1"
    else
        msg_warn "$1"
    fi
}

declare -a PAKIETY_FEDORA=(
    "nvim"
    "git"
    "rg"
    "fd"
    "fzf"
)

declare -a PAKIETY_UBUNTU=(
    "nvim"
    "git"
    "rg"
    "fd"
    "fzf"
)

declare -a PAKIETY_ARCH=(
    "nvim"
    "git"
    "rg"
    "fd"
    "fzf"
)

if [[ $FEDORA ]]; then
    for i in ${PAKIETY_FEDORA[@]}; do
        check "$i"
    done

    echo
    msg_info "Jeśli brakuje jakiegoś pakietu uruchom polecenie:"
    echo
    echo "sudo dnf install neovim git ripgrep fzf fd-find"
    echo
fi

if [[ $UBUNTU ]]; then
    for i in ${PAKIETY_UBUNTU[@]}; do
        check "$1"
    done

    echo
    msg_info "Jeśli brakuje jakiegoś pakietu uruchom polecenie:"
    echo
    echo "sudo apt install neovim git ripgrep fzf fd-find"
fi

if [[ $ARCH ]]; then
    for i in ${PAKIETY_ARCH[@]}; do
        check "$1"
    done

    echo
    msg_info "Jeśli brakuje jakiegoś pakietu uruchom polecenie:"
    echo
    echo "sudo pacman -S neovim git ripgrep fzf fd-find"
fi
