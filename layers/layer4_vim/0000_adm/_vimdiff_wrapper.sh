#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function standard_vimdiff() {
    exec vimdiff "$@"
}

if test "${METWORK_PYTHON_MODE:-}" = ""; then
    standard_vimdiff "$@"
    exit $?
fi

VIM_LAYER=python${METWORK_PYTHON_MODE}_vim@mfext
IS_VIM_LAYER_INSTALLED=$(is_layer_installed "${VIM_LAYER}")
if test "${IS_VIM_LAYER_INSTALLED}" = "1"; then
    exec layer_wrapper --layers="${VIM_LAYER}" -- "${CURRENT_DIR}/vimdiff" -u "${MFEXT_HOME}/opt/vim/config/vimrc" "$@"
else
    standard_vimdiff "$@"
    exit $?
fi
