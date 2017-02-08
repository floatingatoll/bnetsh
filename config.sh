. functions.sh

[[ -n "BNETSH_CONFIG" ]] || {
    BNETSH_CONFIG=1

    defined "$APIKEY" || error "APIKEY not exported"
    defined "$BNETUSER" || error "BNETUSER not exported"
    defined "$BNETPASS" || error "BNETPASS not exported"
}
