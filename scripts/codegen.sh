#!/bin/bash

cd js
npm ci
npm run generate
npm run clean
cd ..
dart format lib/src/models
dart format lib/src/events
dart format lib/src/provider_api.dart
flutter packages pub run build_runner build --delete-conflicting-outputs
