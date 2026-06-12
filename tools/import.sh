#!/usr/bin/env bash
set -e
BASE=https://plucky-birch-681.higgsfield.gg
mkdir -p public/assets/audio
for f in index.html game.js strings.js; do curl -fsS $BASE/$f -o public/$f; done
for f in bg.jpg mama.png egg.png baby.png trice.png stego.png ptero.png bronto.png anky.png leaf.png; do curl -fsS $BASE/assets/$f -o public/assets/$f; done
for f in sfx_pop sfx_win; do curl -fsS $BASE/assets/audio/$f.mp3 -o public/assets/audio/$f.mp3; done
curl -fsS $BASE/assets/audio/music_loop.m4a -o public/assets/audio/music_loop.m4a
rm -f hello-test.txt