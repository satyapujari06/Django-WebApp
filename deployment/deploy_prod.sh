#!/bin/sh

ssh root@54.159.51.66 <<EOF
  cd Django-WebApp
  git pull 
  source ram/bin/activate
  ./manage.py migrate
  sudo systemctl restart nginx
  sudo service gunicorn restart
  sudo service nginx restart
  exit
EOF
