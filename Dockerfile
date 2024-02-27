from node:14-alpine as builder
workdir '/app'
COPY package.json .
Run npm install
COPY . . 
Run npm run build 
from nginx
COPY --from=builder /app/build /usr/share/nginx/html