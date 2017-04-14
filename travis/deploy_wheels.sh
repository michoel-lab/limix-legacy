#!/bin/bash

set -e

if ! [ -z ${DOCKER_IMAGE+x} ]; then
    docker run -e PYPI_PASSWORD=${PYPI_PASSWORD} --rm -v `pwd`:/io $DOCKER_IMAGE /bin/bash
    ls
    ls wheelhouse/
    pip install twine Cython numpy
    twine upload ${TRAVIS_BUILD_DIR}/wheelhouse/limix_legacy*.whl \
        -u dhorta -p ${PYPI_PASSWORD}
else
    if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
        ls dist
        pip install twine
        twine upload ${TRAVIS_BUILD_DIR}/dist/limix_inference*.whl \
              -u dhorta -p ${PYPI_PASSWORD}
    fi
fi