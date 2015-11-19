#! /bin/bash

cd /project
dnu restore

[ ! -z "$DNX_PROJECT" ] && cd $DNX_PROJECT

/opt/dnx/bin/dnx-watch web
