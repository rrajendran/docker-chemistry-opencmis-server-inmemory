#!/usr/bin/env bash

versions=("1.1.0" "1.0.0" "0.14.0" "0.13.0" "0.12.0" "0.11.0" "0.10.0" )

for version in ${versions[@]}
do
        echo "Building verion : $version"
        docker build --build-arg INMEMORY_VERSION=$version -t rameshr/chemistry-opencmis-server-inmemory:$version .
        docker push rameshr/chemistry-opencmis-server-inmemory:$version
done

echo "Docker build done."