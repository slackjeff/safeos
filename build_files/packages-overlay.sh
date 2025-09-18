#!/bin/bash

set -ouex pipefail

log() {
  echo "======== $* ========"
}

PKG_REMOVE=(
	'firefox'
	'firefox-langpacks'
	'toolbox'
)

PKG_INSTALL=(
	'distrobox'
)


log "Remove layered softwares"
dnf5 remove -y "${PKG_REMOVE[@]}"

log "Install layered Softwares"
dnf5 install -y "${PKG_INSTALL[@]}"
