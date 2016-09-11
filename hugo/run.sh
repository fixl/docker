#!/usr/bin/env bash

HUGO=/usr/local/bin/hugo

${HUGO} serve --watch=false --disableLiveReload --bind=0.0.0.0 --appendPort=false --baseUrl=${HUGO_BASE_URL}
