#!/bin/bash

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
    VIM_LAYER_HOME=$(get_layer_home "${VIM_LAYER}" 2>/dev/null)
    if test "${VIM_LAYER_HOME}" != ""; then
        exec layer_wrapper --layers="${VIM_LAYER}" -- "${VIM_LAYER_HOME}/bin/vimdiff" -u "${MFEXT_HOME}/opt/vim/config/vimrc" "$@"
        exit $?
    fi
fi

standard_vimdiff "$@"
exit $?
