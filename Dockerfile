FROM nginx:1.29-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html style.css robots.txt /usr/share/nginx/html/
COPY privacy/ /usr/share/nginx/html/privacy/
RUN nginx -t
EXPOSE 80
