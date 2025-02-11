#!/bin/bash

# Pull the latest Jekyll Docker image
docker pull jekyll/jekyll

# Run the Jekyll Docker container
docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  --publish [::1]:4000:4000 \
  jekyll/jekyll \
  sh -c "gem install webrick jekyll-remote-theme && jekyll serve"