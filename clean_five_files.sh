#!/bin/bash

set -x

mkdir ./Ready
mv $1* ./Ready/


./loopsum.sh
