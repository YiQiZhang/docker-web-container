#!/bin/sh

service supervisor start
supervisorctl reread
supervisorctl update
supervisorctl start laravel-worker:*
