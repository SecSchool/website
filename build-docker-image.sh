#!/bin/sh
scriptPath="$(realpath "$(dirname $0)")"
cd "$scriptPath/"

docker build -t secschool-website .