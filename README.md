# GitHub multi-arch Dockerbuild
Builds any compatible image for multiple architectures, using *GitHub Actions*.

## Internals
This does not use the *Docker Hub* "Automated Build", which does not support building for architectures other than *i386* and *amd64*.

## Usage
Setup your project so that it builds from a *Dockerfile*.
Preferably use a multi-stage build on Alpine Linux, to keep the image as small as posible.

Then copy the [.github/build.yml] to your project and change the *Docker Hub* username and repository.
Finally create a _Access Token_ in *Docker Hub* and add it a a *secret* named _DOCKERHUB_ in your *GitHub* project.

You should now have a multi-arch Docker image in *Docker Hub*!
