FROM openproject/community:14

# Set environment for production
ENV RAILS_ENV=production
ENV OPENPROJECT_HTTPS=true
ENV OPENPROJECT_HSTS=true

# Configure for DigitalOcean App Platform
ENV PORT=8080
ENV OPENPROJECT_CLI_PROXY_HTTPS=true

# Set worker processes for 4GB RAM configuration
ENV RAILS_MIN_THREADS=4
ENV RAILS_MAX_THREADS=16
ENV WEB_WORKERS=2
ENV WORKER_PROCESSES=1

# Configure logging for App Platform
ENV OPENPROJECT_RAILS__STDOUT__LOGGING=true
ENV OPENPROJECT_RAILS__LOG__LEVEL=info

# Disable browser validation to avoid issues with reverse proxy
ENV OPENPROJECT_BROWSER__VALIDATIONS=false

# Expose port for App Platform
EXPOSE 8080