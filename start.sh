PORT="9876"
docker run --rm --name searxng \
             -d -p ${PORT}:8080 \
             -v "${PWD}/searxng:/etc/searxng" \
             -e "BASE_URL=http://localhost:$PORT/" \
             -e "INSTANCE_NAME=ev-searxng" \
             searxng/searxng
