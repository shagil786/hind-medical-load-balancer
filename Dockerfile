# Use the official HAProxy image as the base
FROM haproxy:2.4

# Copy the HAProxy configuration file into the container
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

# Copy the SSL certificate (if you have one)
# COPY haproxy.pem /etc/ssl/certs/haproxy.pem

# Expose ports 80 and 443
EXPOSE 80 443

# Start HAProxy
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]

