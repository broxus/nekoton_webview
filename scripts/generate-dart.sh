#!/bin/bash

cd js
npm ci
npm run generate
npm run clean
cd ..
dart format lib/src/models
