# Estágio único: Nginx servindo arquivos estáticos
FROM nginx:1.27-alpine

# Remove a config padrão do Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copia a config personalizada
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia os arquivos HTML
COPY index.html /usr/share/nginx/html/
COPY privacidade.html /usr/share/nginx/html/
COPY termos.html /usr/share/nginx/html/

# Expõe porta 80
EXPOSE 80

# Nginx em foreground
CMD ["nginx", "-g", "daemon off;"]
