#!/bin/sh
# compress the files of the test results
TAG=$1
if [ -z $TAG ]; then
	echo "Usage: $0 tag test-names..."
	exit 1
fi
shift
# Bash parameter expansion: ${@/%/suffix} -> append suffix to every positional parameter
tar -czf language-c-reports_$TAG.tgz index.html ${@/%/.html} ${@/%//} 
ls -lh language-c-reports_$TAG.tgz