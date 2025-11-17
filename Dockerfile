# Usar imagen oficial de Nginx
FROM nginx:alpine

# Copiar los archivos estáticos al directorio de Nginx
COPY . /usr/share/nginx/html/

# Copiar configuración personalizada de Nginx (opcional)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exponer puerto
EXPOSE 80

# Comando por defecto (Nginx se inicia automáticamente)
CMD ["nginx", "-g", "daemon off;"]