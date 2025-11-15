FROM ubuntu:latest

# Install Apache
RUN apt update && apt install -y apache2

# Copy your website files
COPY . /var/www/html/

# Start Apache in foreground (required for Docker)
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

EXPOSE 80
