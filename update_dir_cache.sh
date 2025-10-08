#!/bin/bash
#nomenu


CACHE="/home/bag/.local/share/.dir_cache"

EXCLUDE_CMD="! -path "
BLACKLIST="paru rlcraft serverTomas raylib RLcraft bk MineBackup moddedServer MinecraftServer"

for dir in $BLACKLIST; do
	EXCLUDED_DIRS="$EXCLUDED_DIRS $EXCLUDE_CMD '*$dir*' "
done

find /home/bag -type d ! -path "/home/bag/.*" $EXCLUDED_DIRS > $CACHE
