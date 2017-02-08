#!/bin/bash

. functions.sh
. config.sh

verify_access_token() {
    log "TODO: not implemented"
    defined "$ACCESS_TOKEN"
}

verify_refresh_token() {
    log "TODO: not implemented"
    defined "$REFRESH_TOKEN"
}

valid_access_token=; verify_access_token && valid_access_token=1
valid_refresh_token=; verify_refresh_token && valid_refresh_token=1

[[ -n $valid_access_token ]] || log "TODO: refresh access token"
[[ -n $valid_refresh_token ]] || log "TODO: refresh refresh token"

error "TODO: EOF"
