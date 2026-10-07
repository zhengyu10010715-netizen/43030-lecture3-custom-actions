FROM python:3.12-slim

WORKDIR /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends bash git \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN chmod +x /app/.github/scripts/entrypoint.sh

ENTRYPOINT ["/app/.github/scripts/entrypoint.sh"]
