#!/bin/bash

set -e

export PACKAGE_NAME=$(python setup.py --name)
export PACKAGE_VERSION=$(python setup.py --version)
echo "package: ${PACKAGE_NAME}==${PACKAGE_VERSION}"

python setup.py install

python setup.py bdist_wheel --build-number $(date +%Y%m%d%H%M%S)

python -m twine upload dist/*

exec "$@"
