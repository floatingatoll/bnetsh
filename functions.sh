#!/bin/bash

[[ -n $BNETSH_FUNCTIONS ]] || {
    BNETSH_FUNCTIONS=1

    log() { echo "#" "$@" 1>&2; }
    error() { echo "$@" 1>&2; exit 1; }
    defined() { [[ -n "$1" ]]; }
}
