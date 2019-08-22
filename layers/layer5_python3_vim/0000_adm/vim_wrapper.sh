#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

which is_layer_installed >/dev/null 2>&1
if test $? -eq 1; then
    # this is a FIX for vim usage at git EDITOR
    # it seems that git unset PATH and LD_LIBRARY_PATH (security reasons?)
    # before launching the editor
    # => so we have to reload all layers
    exec "${MFEXT_HOME}/bin/mfext_wrapper" "${CURRENT_DIR}/_vim_wrapper.sh" "$@"
    exit $?
else
    exec "${CURRENT_DIR}/_vim_wrapper.sh" "$@"
    exit $?
fi
