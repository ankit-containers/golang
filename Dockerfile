FROM golang:1.16.5-alpine
LABEL maintainer="Ankit R Gadiya ankit@argp.in"

ENV GOLANG_VERSION=1.16.5
ENV GOLANG_CI_LINT_VERSION=1.37.1

RUN apk --no-cache --update add gcc build-base sqlite sqlite-dev sqlite-libs
RUN wget https://github.com/golangci/golangci-lint/releases/download/v$GOLANG_CI_LINT_VERSION/golangci-lint-$GOLANG_CI_LINT_VERSION-linux-amd64.tar.gz \
		&& tar -xvf golangci-lint-$GOLANG_CI_LINT_VERSION-linux-amd64.tar.gz \
		&& mv golangci-lint-$GOLANG_CI_LINT_VERSION-linux-amd64/golangci-lint /usr/local/bin \
		&& rm -rf golangci-lint*

