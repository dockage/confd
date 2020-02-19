# confd [![Docker Pulls](https://img.shields.io/docker/pulls/dockage/confd.svg)](https://hub.docker.com/r/dockage/confd/) [![Docker Stars](https://img.shields.io/docker/stars/dockage/confd.svg?style=flat)](https://hub.docker.com/r/dockage/confd/) [![Docker Build Status](https://img.shields.io/docker/build/dockage/confd.svg)](https://hub.docker.com/r/dockage/confd/) [![Docker Automated build](https://img.shields.io/docker/automated/dockage/confd.svg)](https://hub.docker.com/r/dockage/confd/)

[`confd`](http://confd.io) is a lightweight configuration management tool focused on:

* keeping local configuration files up-to-date using data stored in etcd, consul, dynamodb, redis, vault, zookeeper, aws ssm parameter store or env vars and processing template resources.
* reloading applications to pick up new config file changes

|Versions|Size|Layer|Dockerfile|
|:-----:|:---:|:---:|:--------:|
|**alpine3.5**|[![MicroBadger Size (alpine3.5)](https://img.shields.io/microbadger/image-size/dockage/confd/alpine3.5.svg)](https://microbadger.com/images/dockage/confd:alpine3.5)|[![MicroBadger Layers (alpine3.5)](https://img.shields.io/microbadger/layers/dockage/confd/alpine3.5.svg)](https://microbadger.com/images/dockage/confd:alpine3.5)|[alpine/3.5/Dockerfile](https://github.com/dockage/confd/blob/master/alpine/3.5/Dockerfile)|
|**alpine3.6**|[![MicroBadger Size (alpine3.6)](https://img.shields.io/microbadger/image-size/dockage/confd/alpine3.6.svg)](https://microbadger.com/images/dockage/confd:alpine3.6)|[![MicroBadger Layers (alpine3.6)](https://img.shields.io/microbadger/layers/dockage/confd/alpine3.6.svg)](https://microbadger.com/images/dockage/confd:alpine3.6)|[alpine/3.6/Dockerfile](https://github.com/dockage/confd/blob/master/alpine/3.6/Dockerfile)|
|**alpine3.7**|[![MicroBadger Size (alpine3.7)](https://img.shields.io/microbadger/image-size/dockage/confd/alpine3.7.svg)](https://microbadger.com/images/dockage/confd:alpine3.7)|[![MicroBadger Layers (alpine3.7)](https://img.shields.io/microbadger/layers/dockage/confd/alpine3.7.svg)](https://microbadger.com/images/dockage/confd:alpine3.7)|[alpine/3.7/Dockerfile](https://github.com/dockage/confd/blob/master/alpine/3.7/Dockerfile)|
|**alpine3.8**|[![MicroBadger Size (alpine3.8)](https://img.shields.io/microbadger/image-size/dockage/confd/alpine3.8.svg)](https://microbadger.com/images/dockage/confd:alpine3.8)|[![MicroBadger Layers (alpine3.8)](https://img.shields.io/microbadger/layers/dockage/confd/alpine3.8.svg)](https://microbadger.com/images/dockage/confd:alpine3.8)|[alpine/3.8/Dockerfile](https://github.com/dockage/confd/blob/master/alpine/3.8/Dockerfile)|
|**alpine3.11**, **latest**|[![MicroBadger Size (alpine3.11)](https://img.shields.io/microbadger/image-size/dockage/confd/alpine3.11.svg)](https://microbadger.com/images/dockage/confd:alpine3.11)|[![MicroBadger Layers (alpine3.11)](https://img.shields.io/microbadger/layers/dockage/confd/alpine3.11.svg)](https://microbadger.com/images/dockage/confd:alpine3.11)|[alpine/3.11/Dockerfile](https://github.com/dockage/confd/blob/master/alpine/3.11/Dockerfile)|

## Contributing

If you find this image useful here's how you can help:

* Send a pull request with your awesome features and bug fixes
* Help users resolve their [issues](../../issues?q=is%3Aopen+is%3Aissue)

## Issues

Before reporting your issue please try updating Docker to the latest version and check if it resolves the issue. Refer to the Docker [installation guide](https://docs.docker.com/installation) for instructions.

SELinux users should try disabling SELinux using the command `setenforce 0` to see if it resolves the issue.

If the above recommendations do not help then [report your issue](../../issues/new) along with the following information:

* Output of the `docker vers6` and `docker info` commands
* The `docker run` command or `docker-compose.yml` used to start the image. Mask out the sensitive bits.
* Please state if you are using [Boot2Docker](http://www.boot2docker.io), [VirtualBox](https://www.virtualbox.org), etc.

## Getting started

### Installation

Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/dockage/confd) and is the recommended method of installation.

> **Note**: Builds are also available on [Quay.io](https://quay.io/repository/dockage/confd)

```bash
docker pull dockage/confd:latest
```

Alternatively you can build the image yourself.

```bash
docker build -t dockage/confd github.com/dockage/confd
```

### Available Configuration Parameters

*Please refer the docker run command options for the `--env-file` flag where you can specify all required environment variables in a single file. This will save you from writing a potentially long docker run command. Alternatively you can use docker-compose.*

Below is the complete list of available options that can be used to customize your `confd` installation.

| Parameter | Description |
|-----------|-------------|
| `CONFD_BACKEND` | The backend to use. Possible options: [`etcd`](https://github.com/coreos/etcd), [`consul`](http://consul.io), [`dynamodb`](http://aws.amazon.com/dynamodb), [`redis`](http://redis.io), [`vault`](https://vaultproject.io), [`zookeeper`](https://zookeeper.apache.org), [`ssm`](https://aws.amazon.com/ec2/systems-manager) or `env`. Defaults to `env`. |
| `CONFD_CLIENT_CAKEYS` | The client CA key file. Defaults to `''`. |
| `CONFD_CLIENT_CERT` | The client cert file. Defaults to `''`. |
| `CONFD_CLIENT_KEY` | The client key file. Defaults to `''` |
| `CONFD_INTERVAL` | The backend polling interval in seconds. Defaults to `600`. |
| `CONFD_LOG_LEVEL` | Level which confd should log messages. Defaults to `info`. |
| `CONFD_NODES` | List of backend nodes. E.g.: `"http://127.0.0.1:4001", "http://127.0.0.1:4002"`. Defaults to `''`. |
| `CONFD_PREFIX` | The string to prefix to keys. Defaults to `/`. |
| `CONFD_SCHEME` | The backend URI scheme. E.g.: `http` or `https`. Defaults to `http`. |
| `CONFD_SRV_DOMAIN` | The name of the resource record. Defaults to `''`. |
| `CONFD_SRV_RECORD` | The SRV record to search for backends nodes. Defaults to `''`. |
| `CONFD_SYNC_ONLY` | sync without check_cmd and reload_cmd. Defaults to `false`. |
| `CONFD_WATCH` | Enable watch support. Defaults to `false`. |
