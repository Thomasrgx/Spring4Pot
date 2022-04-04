#!/bin/bash
sudo apt update
sudo apt upgrade -y

sudo apt install python3-pip
sudo pip3 install poetry
sudo pip3 install azure
sudo apt-get -y install git supervisor
pip3 install virtualenv

# Get the Spring4pot source
cd /opt
git clone https://github.com/Thomasrgx/Spring4Pot
cd Spring4Pot

virtualenv env
. env/bin/activate

sudo poetry install

# Config for supervisor.
cat > /etc/supervisor/conf.d/spring4pot.conf <<EOF
[program:spring4pot]
command=poetry run python3 /opt/Spring4Pot/spring4pot.py 
directory=/opt/Spring4Pot
stdout_logfile=/opt/Spring4Pot/spring4pot.out
stderr_logfile=/opt/Spring4Pot/spring4potpot.err
autostart=true
autorestart=true
redirect_stderr=true
stopsignal=QUIT
EOF

supervisorctl update
