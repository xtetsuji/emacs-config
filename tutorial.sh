#!/bin/bash

set -o errexit

function exists {
    local arg=$1
    if type $arg >/dev/null 2>&1 ; then
        return 0
    fi
    return 1
}

url="https://speakerdeck.com/typester/emacsshi-jian-ru-men-perlbian"

if exists browser ; then
    browser $url
elif exists open ; then
    open $url
elif exists kstart ; then
    kstart $url
else
    echo open $url
fi

