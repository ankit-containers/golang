# Golang

[![Source Code](https://img.shields.io/badge/source-gitea-blue)](https://git.argc.in/containers/golang)
[![Build Status](https://drone.argd.in/api/badges/containers/golang/status.svg)](https://drone.argd.in/containers/golang)
[![Registry](https://img.shields.io/badge/registry-quay.io-red)](https://quay.io/repository/ankitrgadiya/golang?tab=tags)

The base Golang image comes with the Go toolchain installed. This image builds
on top of the Alpine-based Golang image. Additionally, it provides a C compiler
(GCC) for CGO modules and SQLite library. It also comes with the [GolangCI
Lint](https://golangci-lint.run) meta-linter installed.

The primary usecase for this image is in CI/CD environments. It comes with
necessary tools to lint, build, and test the source code. For production build,
check out the [Distroless](https://github.com/GoogleContainerTools/distroless)
base images.

``` bash
docker pull quay.io/ankitrgadiya/golang:latest
```

## Releases

Golang supports 3 Major versions and ships Docker images for them. I do not
intend to support all the tags from Official Golang image. Instead, this image
builds on top of the latest version's Alpine Base image. I will tag the images
with Golang's upstream version. The `latest` tag will always point to the latest
version of the image.
