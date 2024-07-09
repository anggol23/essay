# Gunakan image Node.js resmi sebagai base image
FROM node:14

# Tetapkan direktori kerja di dalam container
WORKDIR /usr/src/app

# Salin file package.json dan package-lock.json (jika ada)
COPY package*.json ./

# Install dependensi aplikasi
RUN npm install

# Salin sisa kode aplikasi
COPY . .

# Ekspos port yang akan digunakan oleh aplikasi
EXPOSE 3000

# Perintah untuk menjalankan aplikasi
CMD ["node", "server.js"]
