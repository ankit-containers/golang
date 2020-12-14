# Golang

[![Build Status](https://drone.argd.in/api/badges/containers/golang/status.svg)](https://drone.argd.in/containers/golang)

The base Golang image comes with the Go toolchain installed. This image builds
on top of the Golang Alpine base image and also provides a standard C compiler
(GCC) for CGO modules and some essential C libraries that I often use in my
projects. It additionally provides [GolangCI Lint](https://golangci-lint.run)
which is a meta-linter often used in CI/CD Pipelines for Go projects.

This image is intended for CI/CD environments for testing and linting Golang
projects. For production, check out
[Distroless](https://github.com/GoogleContainerTools/distroless) base images.

I don't intend to support all the tags from Official Golang image. Instead, this
image will generally use the latest Golang version. Find the list of all
[available tags](https://quay.io/repository/ankitrgadiya/golang?tab=history) on
Quay.

``` bash
docker pull quay.io/ankitrgadiya/golang:latest
```
