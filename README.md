# Rust image for CI
Custom image with useful tools in CI

Extract image files to analyze space
```shell
id=$(docker create funbiscuit/rust-ci:latest)
docker export $id -o image.tar
docker rm $id
rm -rf image && mkdir image
tar -xf image.tar -C image
```
