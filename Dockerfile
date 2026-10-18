# Build Stage
FROM node:22-alpine AS builder
WORKDIR /app

# Instalar dependências
COPY package*.json ./
RUN npm ci

# Copiar código-fonte e compilar estaticamente
COPY . .
RUN npm run build

# Production Stage: Nginx Alpine ultra-leve
FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
