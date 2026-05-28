FROM nginxinc/nginx-unprivileged:alpine

# Copia a configuração customizada do Nginx
COPY default.conf /etc/nginx/conf.d/default.conf

# Copia todos os arquivos do site com as permissões corretas para o usuário nginx
COPY --chown=nginx:nginx . /usr/share/nginx/html

# Expõe a porta 8080 (padrão desta imagem não-privilegiada)
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

