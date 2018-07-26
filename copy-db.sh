#!/bin/bash -

set -o nounset                              # Treat unset variables as an error

usage="	Usage: ./$(basename "$0") [-h] <source_project> <target_project>

	Options:
		-h  show this help text

	Script to copy entire database from one firebase project to another
	Uses /tmp/fb-db-copy.json as temp I/O file"

if [ "$1" == "-h" ]; then
  	echo "$usage"
  	exit 0
fi

fromDb=$1
toDb=$2
output=${3:-"/tmp/fb-db-copy"}
path=${4:-"/"}

firebase -P ${fromDb} database:get ${path} -o ${output}.json
firebase -P ${toDb} database:set -y ${path} ${output}.json