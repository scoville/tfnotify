#!/bin/bash

set -e

version="v$(gobump show -r)"
make crossbuild
ghr -username scoville -replace "$version" "dist/$version"
