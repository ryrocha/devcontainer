echo "$GH_TOKEN" | docker login ghcr.io -u $GH_USER --password-stdin &> /dev/null
