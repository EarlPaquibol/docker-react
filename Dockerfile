FROM nginx
COPY frontend/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


# FROM node:16-alpine AS builder
# WORKDIR "/app"
# COPY package.json .
# RUN npm install
# COPY . .
# RUN npm run build

# # /app/build <--- folder we need for production

# FROM nginx
# EXPOSE 80
# COPY --from=builder /app/build /usr/share/nginx/html
# CMD ["nginx", "-g", "daemon off;"]

# /usr/share/nginx/html
# this is default folder for files u want to serve nginx