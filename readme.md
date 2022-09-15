## Prerequisites
* Install [Docker](https://docs.docker.com/installation/#installation)
* Add record 127.0.0.1 laravel56.my at end of hosts file


Location of your hosts file

To modify your current `hosts` file, look for it in the following places and
modify it with a text editor.

- **Linux**: `/etc/hosts` file.
- **Windows**: `%SystemRoot%\system32\drivers\etc\hosts` file.

SUDO/ADMIN: You will need permissions for any action that modify hosts file, add sudo to the commands below when needed. If you are on windows, make sure you run it as administrator.


## Beginning of work

* Run:
```bash
$ docker-compose up -d 
```
* View docker logs of php service 
```bash
$ docker-compose logs -f php 
```

When all scripts are executed type https://laravel56.my in browser 

* For interactive bash shell in php service:
```bash
$ docker-compose exec php bash 
```
