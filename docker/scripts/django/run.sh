#!/bin/bash
python manage.py migrate
python manage.py runserver 0.0.0.0:80
echo Running Django on the local host at http://0.0.0.0:80

