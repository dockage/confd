# alpine-confd [![Docker Pulls](https://img.shields.io/docker/pulls/dockage/alpine-confd.svg)](https://hub.docker.com/r/dockage/alpine-confd/) [![Docker Stars](https://img.shields.io/docker/stars/dockage/alpine-confd.svg?style=flat)](https://hub.docker.com/r/dockage/alpine-confd/) [![MicroBadger](https://images.microbadger.com/badges/image/dockage/alpine-confd:3.7.svg)](https://microbadger.com/images/dockage/alpine-confd:3.7) [![Docker Build Status](https://img.shields.io/docker/build/dockage/alpine-confd.svg)](https://hub.docker.com/r/dockage/alpine-confd/) [![Docker Automated build](https://img.shields.io/docker/automated/dockage/alpine-confd.svg)](https://hub.docker.com/r/dockage/alpine-confd/)

[`confd`](http://confd.io) is a lightweight configuration management tool focused on:

* keeping local configuration files up-to-date using data stored in etcd, consul, dynamodb, redis, vault, zookeeper, aws ssm parameter store or env vars and processing template resources.
* reloading applications to pick up new config file changes

## Contributing

If you find this image useful here's how you can help:

- Send a pull request with your awesome features and bug fixes
- Help users resolve their [issues](../../issues?q=is%3Aopen+is%3Aissue).

## Issues

Before reporting your issue please try updating Docker to the latest version and check if it resolves the issue. Refer to the Docker [installation guide](https://docs.docker.com/installation) for instructions.

SELinux users should try disabling SELinux using the command `setenforce 0` to see if it resolves the issue.

If the above recommendations do not help then [report your issue](../../issues/new) along with the following information:

- Output of the `docker vers6` and `docker info` commands
- The `docker run` command or `docker-compose.yml` used to start the image. Mask out the sensitive bits.
- Please state if you are using [Boot2Docker](http://www.boot2docker.io), [VirtualBox](https://www.virtualbox.org), etc.

# Getting started

## Installation

Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/dockage/alpine-confd) and is the recommended method of installation.

> **Note**: Builds are also available on [Quay.io](https://quay.io/repository/dockage/alpine-confd)

```bash
docker pull dockage/alpine-confd:3.7
```

Alternatively you can build the image yourself.

```bash
docker build -t dockage/alpine-confd github.com/dockage/alpine-confd
```