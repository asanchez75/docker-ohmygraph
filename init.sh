#!/bin/bash
if [ ! -f ./.data_loaded ]; then
  cp -Rf /data/. /usr/app
  touch ./.data_loaded
fi

cd /usr/app && npm run start && exec sleep infinity



