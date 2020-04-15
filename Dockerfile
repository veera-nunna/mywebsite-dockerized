FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html /var/www/html/
COPY css /var/www/html/css
COPY email-templates /var/www/html/email-templates
COPY favicon.png /var/www/html/
COPY fonts /var/www/html/fonts
COPY js /var/www/html/js
COPY sendemail.php /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
