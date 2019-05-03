#!/usr/bin/env bash
python manage.py collectstatic --noinput
python manage.py migrate
uwsgi --ini /etc/uwsgi/uwsgi.ini
