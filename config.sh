#!/bin/bash

. functions.sh
. local.sh

[[ -n $BNETSH_CONFIG ]] || {
    BNETSH_CONFIG=1

    defined "$BNETSH_PORT" || error "BNETSH_PORT not exported"
    defined "$APIAUTHURL" || error "APIAUTHURL not exported"
    defined "$APIURL" || error "APIURL not exported"
    defined "$APIKEY" || error "APIKEY not exported"
}
