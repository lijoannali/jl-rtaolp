#!/usr/bin/env bash

SAVED_DIR="$HOME/.marco_location/saved_dir.txt"
marco() { 
    mkdir -p "$(dirname "$SAVED_DIR")"
    pwd > "$SAVED_DIR"
}

polo() {
    if [[ ! -d "$(cat "$SAVED_DIR")" ]]; then
        echo "Please run marco first and ensure a location is saved"
    else
        cd "$(cat "$SAVED_DIR")"
    fi
}
