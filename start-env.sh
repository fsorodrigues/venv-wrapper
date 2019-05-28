#!/bin/bash

function startenv() {
    ENVPATH=$"/home/$USER/envs"

    if [ $1 == "--list" ]
        then
            ls -l $ENVPATH | grep "^d" | rev | cut -d " " -f 1 | rev
        else
            . $ENVPATH/$1/bin/activate
    fi
}

