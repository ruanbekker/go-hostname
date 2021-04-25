# go-hostname
Basic Go Web Application to return the hostname

## Usage

Build a container image:

```
$ docker build -t hostname:go-v1 .
```

Run a container:

```
$ docker run -it -p 8000:8000 hostname:go-v1
Server listening on port 8000
```

Make a request using curl:

```
$ curl http://localhost:8000
Hostname: d677c0022240
```
