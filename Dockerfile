FROM nginxinc/nginx-unprivileged:alpine

# Copia todos os arquivos do site para a pasta de arquivos estáticos do Nginx
COPY . /usr/share/nginx/html

# Expõe a porta 8080 (padrão desta imagem não-privilegiada)
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
