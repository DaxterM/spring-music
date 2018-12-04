#!/bin/bash

set -xe
Version=`cat version/number`


#echo -e "applications: \n- name: Spring-Music-CIDemo \n  memory: 1G \n  random-route: true \n  path: /tmp/build/put/music-release/spring-music-$Version.war" > app-manifest-output/manifest.yml

cat > app-manifest-output/manifest.yml << EOF
---
applications:
- name: Spring-Music-CIDemo
  memory: 1G
  random-route: true
  routes:
  - dax-springmusic.cfapps.io
  buildpacks:
  - java_buildpack
EOF
