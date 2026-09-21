FROM searxng/searxng:latest

# Copy customized SearXNG configuration
COPY settings.yml /etc/searxng/settings.yml
COPY limiter.toml /etc/searxng/limiter.toml

# Ensure correct permissions for the searxng user
USER root
RUN chown -R searxng:searxng /etc/searxng

USER searxng

# Expose the internal port used by SearXNG
EXPOSE 8080
