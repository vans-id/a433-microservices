# base image Node.js versi 14
FROM node:14-alpine

# Menentukan working directory untuk container adalah /app
WORKDIR /app

# Menyalin seluruh source code ke working directory
COPY . .

# Jalankan production mode dan gunakan container item-db
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies
RUN npm install --production --unsafe-perm && npm run build

# Expose port yang digunakan aplikasi
EXPOSE 8080

# Jalankan ini saat container diluncurkan
CMD [ "npm", "start" ]