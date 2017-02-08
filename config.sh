error() { echo "$@" 1>&2; exit 1; }
defined() { [[ -n "$1" ]]; }

defined $APIKEY || error "APIKEY not exported"
defined $BNETUSER || error "BNETUSER not exported"
defined $BNETPASS || error "BNETPASS not exported"
