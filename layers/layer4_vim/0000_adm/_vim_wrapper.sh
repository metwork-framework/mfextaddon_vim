#!/bin/bash

function standard_vim() {
    which --skip-alias vim >/dev/null 2>&1
    if test $? -eq 0; then
        exec vim "$@"
    else
        exec vi "$@"
    fi
}

if test "${METWORK_PYTHON_MODE:-}" = ""; then
    standard_vim "$@"
    exit $?
fi

VIM_LAYER=python${METWORK_PYTHON_MODE}_vim@mfext
IS_VIM_LAYER_INSTALLED=$(is_layer_installed "${VIM_LAYER}" 2>/dev/null)
if test "${IS_VIM_LAYER_INSTALLED}" = "1"; then
    VIM_LAYER_HOME=$(get_layer_home "${VIM_LAYER}" 2>/dev/null)
    if test "${VIM_LAYER_HOME}" != ""; then
        exec layer_wrapper --layers="${VIM_LAYER}" -- "${VIM_LAYER_HOME}/bin/vim" -u "${MFEXT_HOME}/opt/vim/config/vimrc" "$@"
        exit $?
    fi
fi

standard_vim "$@"
exit $?
