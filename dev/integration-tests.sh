#!/bin/bash

find . -name *.pyc -delete
echo
echo "Running Integration Specs"
echo "----------------------------------------------------------------------"
echo
mamba -f progress `find . -maxdepth 2 -type d -name "integration_specs" | grep -v systems`
MAMBA_RETCODE=$?

exit $(($MAMBA_RETCODE))
