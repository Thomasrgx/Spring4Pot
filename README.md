# Log4Pot

A honeypot for the Spring4Shell vulnerability.

## Features

* Listen on various ports for Spring4Shell exploitation.
* Detect exploitation in request line and headers.

## Usage

1. Fetch this GitHub repository `git clone https://github.com/Thomasrgx/Spring4Pot.git`
2. Change directory into the local copy with `cd Spring4Pot`
3. Add execution permission to deply_spring4pot.sh: `chmod +x deploy_spring4pot.py`
4. Execute it: `sudo ./deploy_spring4pot.py`
5. Test if the server works properly: `curl http://localhost`

If the honeypot is working, you should have a basic answer with a random ID generated. If not, try to run this command in /opt/Spring4Pot/:
```
$ sudo poetry run python3 spring4pot.py
```