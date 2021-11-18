#!/bin/bash

# test vim binary is here

cd "${MFEXT_HOME}" || exit 1
cd opt/python3_vim/bin
ls -l vim

cd -
cd opt/python2_vim/bin
ls -l vim

