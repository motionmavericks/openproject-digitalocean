FROM openproject/community:14

# Set environment variables
ENV OPENPROJECT_HTTPS=true
ENV OPENPROJECT_HOST__NAME=openproject.example.com
ENV OPENPROJECT_HSTS=true
ENV DATABASE_URL=postgres://openproject:${OPENPROJECT_DB_PASSWORD}@${OPENPROJECT_DB_HOST}:${OPENPROJECT_DB_PORT}/${OPENPROJECT_DB_NAME}?pool=20&reconnect=true
ENV SECRET_KEY_BASE=${SECRET_KEY_BASE}
ENV OPENPROJECT_CACHE__STORE=redis
ENV OPENPROJECT_CACHE__REDIS__URL=redis://:${REDIS_PASSWORD}@${REDIS_HOST}:6379/0
ENV OPENPROJECT_JOB__STORE=redis
ENV OPENPROJECT_JOB__REDIS__URL=redis://:${REDIS_PASSWORD}@${REDIS_HOST}:6379/1

# App Platform expects port 8080
ENV PORT=8080
EXPOSE 8080

# Use the openproject user
USER 1001

# Start OpenProject
CMD ["./docker/prod/entrypoint.sh", "./docker/prod/web"]