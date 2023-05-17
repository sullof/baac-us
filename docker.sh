docker stop baac-us
docker rm baac-us

docker run --name baac-us \
  -p 8044 \
  --restart unless-stopped \
  -e VIRTUAL_HOST=baac.us,www.baac.us \
  -e LETSENCRYPT_HOST=baac.us,www.baac.us \
  -e LETSENCRYPT_EMAIL=francesco@sullo.co \
  -v `pwd`/baac.us/html:/usr/share/nginx/html:ro -d nginx
