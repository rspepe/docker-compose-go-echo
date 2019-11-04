#!/usr/bin/env bash

if [[ -z "${GITHUB_ORGANIZATION}" ]]; then
  GITHUB_ORGANIZATION="rspepe"
fi

if [[ -z "${GITHUB_REPOSITORY}" ]]; then
  GITHUB_ORGANIZATION="docker-compose-go-echo"
fi

SOURCE_PATH="/go/src/github.com/${GITHUB_ORGANIZATION}/${GITHUB_REPOSITORY}"

echo "GITHUB_ORGANIZATION: ${GITHUB_ORGANIZATION}."
echo "GITHUB_REPOSITORY: ${GITHUB_REPOSITORY}."
echo "SOURCE_PATH: ${SOURCE_PATH}."

if [ ! -d "$SOURCE_PATH" ]; then
  mkdir -p "/go/src/github.com/${GITHUB_ORGANIZATION}"
  ln -s /src $SOURCE_PATH
fi

if [ "$MODE" != "release" ]
then
  /go/bin/gin -i run $SOURCE_PATH/main.go
else
  /usr/local/go/bin/go run $SOURCE_PATH/main.go
fi
