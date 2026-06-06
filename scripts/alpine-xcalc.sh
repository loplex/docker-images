#!/bin/sh
set -eu

dockerImg='lopin/alpine-xcalc'

x11unix='/tmp/.X11-unix'
xauthority="${XAUTHORITY:-${HOME?}/.Xauthority}"

[ -n "${DISPLAY=}" ]    || { echo "DISPLAY variable not set"     >&2; exit 1; }
[ -d "${x11unix=}" ]    || { echo "Missing ${x11unix} directory" >&2; exit 1; }
[ -f "${xauthority=}" ] || { echo "Missing ${xauthority} file"   >&2; exit 1; }

set -x

docker run -i --rm \
  -v "${x11unix}:${x11unix}" \
  -v "${xauthority}:/root/.Xauthority" \
  -e "DISPLAY=${DISPLAY}" \
  "${dockerImg}" \
  "$@"
