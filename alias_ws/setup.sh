#!/bin/bash

if [ ! $(cat ~/.bashrc | grep "# my_aliases") ]; then
cat << EOF >> ~/.bashrc

# my_aliases
if [ -f ~/.bash_myaliases ]; then
  . ~/.bash_myaliases
fi
EOF
fi

cp ./.bash_myaliases ~/.bash_myaliases

. ~/.bash_myaliases