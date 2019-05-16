#!/bin/sh

cd /app

if [[ ! -d "/app/.git" ]]; then
	rm -rf /app/*
	git clone $GIT_URL .
	git submodule update --init --recursive --remote
fi

if [[ ! -d "/app/static/games/bin" ]]; then
	python3 ./static/games/download_data.py
fi

gunicorn -w 2 -b 0.0.0.0:5000 app:app
exec "$@"
