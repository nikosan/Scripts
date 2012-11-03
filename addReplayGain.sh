#!/bin/sh
#
# Ajoute le tag ReplayGain dans les fichiers musicaux flac, ogg et mp3
# Necessite les commandes flac, vorbisgain et mp3gain
#
# FLAC FILES
find . -type d -print -exec sh -c 'cd "$0" && find . -mindepth 1 -maxdepth 1 -name \*.flac -type f -print0 | xargs -0 -r metaflac --add-replay-gain ' {} \;
# OGG FILES
find . -type d -exec sh -c 'cd "$0" && find . -mindepth 1 -maxdepth 1 -name \*.ogg -type f -print0 | xargs -0 -r vorbisgain -a ' {} \;
# MP3 FILES
find . -type d -exec sh -c 'cd "$0" && find . -mindepth 1 -maxdepth 1 -name \*.mp3 -type f -print0 | xargs -0 -r mp3gain -a -k ' {} \;
