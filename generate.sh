#!/usr/bin/env bash

HEADER=$'/**\n * Generated stub declarations for rtMedia for WordPress, BuddyPress and bbPress.\n * @see https://rtmedia.io/?utm_source=dashboard&utm_medium=plugin&utm_campaign=buddypress-media\n * @see https://github.com/Pink-Crab/rtmedia_stubs\n */'

FILE="rtmedia_stubs.php"

set -e

test -f "$FILE"
test -d "source/rtMedia"

# Download dependencies
if [ ! -d vendor ]; then
    composer update
fi

"$(dirname "$0")/vendor/bin/generate-stubs" \
    --force \
    --finder=finder.php \
    --header="$HEADER" \
    --functions \
    --classes \
    --interfaces \
    --traits \
    --constants \
    --include-inaccessible-class-nodes \
    --out="$FILE"
