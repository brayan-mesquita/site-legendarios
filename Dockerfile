FROM nginx:alpine

# Copia todos os arquivos do site para a pasta de arquivos estáticos do Nginx
COPY . /usr/share/nginx/html

# Expõe a porta 80 do contêiner
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
