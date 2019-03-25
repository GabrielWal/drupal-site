FROM nginx:1.14

#================================================ 
# Copy conf files to etc
COPY etc/ /etc/

#================================================ 
# Entrypoint & healthcheck script
COPY docker-entrypoint.sh healthcheck.sh /
RUN chmod +x /docker-entrypoint.sh \
    && chmod +x /healthcheck.sh

#================================================
# Expose ports : HTTP XDEBUG
EXPOSE 80

#================================================
# Healthcheck : default healthcheck
HEALTHCHECK --interval=10s --timeout=30s --start-period=5s --retries=3 CMD [ "/healthcheck.sh" ]

#================================================ 
# Startup process
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
