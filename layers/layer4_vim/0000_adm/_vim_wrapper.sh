#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

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
    exec layer_wrapper --layers="${VIM_LAYER}" -- "${CURRENT_DIR}/vim" -u "${MFEXT_HOME}/opt/devtools/config/vimrc" "$@"
else
    standard_vim "$@"
    exit $?
fi
