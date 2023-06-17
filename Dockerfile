FROM node:20-alpine3.17 as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx:1.25.1-alpine
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html