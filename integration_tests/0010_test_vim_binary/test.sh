#!/bin/bash

# test vim binary is here

cd "${MFEXT_HOME}" || exit 1
cd opt/python2_vim/bin || exit 1
ls -l vim

cd "${MFEXT_HOME}"
cd opt/python3_vim/bin || exit 1
ls -l vim

