#!/bin/bash

. functions.sh
. config.sh

http_postback() {
    # echo -ne "HTTP/1.0 200 OK\r\n\r\n" | nc -l 8080
    # GET /foo?bar=baz HTTP/1.1
    log "listening on $BNETSH_PORT"
    echo -ne "HTTP/1.0 200 OK\r\n\r\nOK" | nc -l $BNETSH_PORT | head -n1;
}

login_with_auth_code() {
    log "UNIMPL: login_with_auth_code()"
    log "TODO: parse auth code:"
    log "$AUTH_CODE"
    if false; then error "unable to login with auth code"; fi
}

login_with_credentials() {
    log "UNIMPL: login_with_credentials()"
    log "TODO: open a login window"
    log "listen for the token"
    AUTH_CODE="$( http_postback )"
    [[ -n $AUTH_CODE ]] || error "Unable to get authcode from http_postback"
    login_with_auth_code
}

login_with_refresh_token() {
    log "UNIMPL: login_with_refresh_token()"
    if false; then login_with_credentials; fi
}

login_with_access_token() {
    log "UNIMPL: login_with_access_token()"
    if false; then login_with_refresh_token; fi
}

case $REFRESH_TOKEN in
    "") # no valid refresh token, so we need to login from scratch
        log "no valid refresh token, we need to authenticate once again"
        login_with_credentials
    ;;
    *) # we have some sort of token
        log "probably valid refresh token, do we have an access token"
        case $ACCESS_TOKEN in
            "") # no valid access token, so we use the refresh token to get one
                login_with_refresh_token
            ;;
            *) # we have some sort of token
                log "probably valid access token, let's try it out"
                login_with_access_token
            ;;
        esac
    ;;
esac

error "TODO: EOF"
