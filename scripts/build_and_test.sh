#!/bin/bash

set -e

melos clean
melos bs
melos run check-format --no-select
melos run generate-js
melos run codegen --no-select
melos run analyze --no-select
# disabled due to flutter_inappwebview update. Need mock InAppWebViewPlatform implementation.
# melos run test --no-select
melos run git-check
