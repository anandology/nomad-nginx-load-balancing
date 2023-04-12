# nomad-nginx-load-balancing

Minimal Nginx load balancing setup for Nomad.

## How to use

Start nomad in dev mode.

```
$ sudo nomad agent -dev -bind 0.0.0.0
``` 

Run all the jobs.

```
$ cd jobs

$ nomad run consul.nomad.hcl 
...

$ nomad run figlet-web.nomad.hcl 
...

$ nomad run nginx.nomad.hcl 
...
```

Visit the app at <http://figlet-web.local.pipal.in:8080>.

