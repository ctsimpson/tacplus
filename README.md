# TACACS with do_auth helper

Loads multiple services

ssh, rsyslog, and tacplus

Exposes 22, 49

$ docker container run -it ctsimpson/tacplus bash

You can exit then start the container detached
```
$ docker container start <container_id>
```

You can also attach back to bash
```
$ docker attach <container_id>
```

## To Use

After your container is up and running, create a test_user:

```
$ adduser test_user
```

## Logs

Logs can be found in the following location :

- /var/log/tacacs.log
- /var/log/tac_auth.log
- /var/log/tac_plus.acct
