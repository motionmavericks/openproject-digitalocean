# OpenProject on DigitalOcean App Platform

This repository contains the Docker configuration for deploying OpenProject on DigitalOcean App Platform.

## Features

- OpenProject 14 Community Edition
- PostgreSQL 16+ database support
- Redis for background jobs
- 4GB RAM configuration
- Support for up to 200 users

## Deployment

This application is configured to deploy automatically to DigitalOcean App Platform when changes are pushed to the main branch.

## Configuration

Environment variables are managed through DigitalOcean App Platform:

- Database connection (PostgreSQL)
- Redis cache connection
- Secret key base
- Host configuration

## URL

https://projects.motionmavericks.com.au