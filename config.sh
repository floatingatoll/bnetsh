#!/bin/bash

. functions.sh

[[ -n $BNETSH_CONFIG ]] || {
    BNETSH_CONFIG=1

    defined "$BNETSH_PORT" || BNETSH_PORT=8080

    defined "$APIURL" || error "APIURL not exported"
    defined "$APIKEY" || error "APIKEY not exported"
    defined "$BNETUSER" || error "BNETUSER not exported"
    defined "$BNETPASS" || error "BNETPASS not exported"
}
