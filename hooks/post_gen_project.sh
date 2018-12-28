#!/usr/bin/env bash

[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"

if [ -f $NVM_DIR/nvm.sh ] ; then
    . $NVM_DIR/nvm.sh &>/dev/null
    nvm install
elif [ -f $(brew --prefix nvm)/nvm.sh &>/dev/null ]; then
    . $(brew --prefix nvm)/nvm.sh &>/dev/null
    nvm install
else
    printf '\033[0;31mWARNING\033[0m: nvm could not be located.\n'
    if command -v brew &>/dev/null; then
	printf 'You can install nvm with homebrew:\n'
        printf '  $ brew install nvm\n'
    fi
    if command -v node &>/dev/null; then
        node_version="$(node --version)"
        printf "However, found node with version: ${node_version}\n"
        read -r -p "Make sure this node version is >= 8.0. Proceed? [y/N] " response
        case "$response" in
            [yY][eE][sS]|[yY])
                ;;
            *)
                exit 1;
                ;;
        esac
    else
	printf 'Could not find node, please install either nvm (preferred), or via package manager.'
        exit 1
    fi
fi

yarn

echo "******************** Build successful ********************"
echo "cd {{cookiecutter.project_name}}"
