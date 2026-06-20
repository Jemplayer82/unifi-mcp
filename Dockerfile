FROM python:3.13-slim

# Install Node.js (for supergateway)
RUN apt-get update && \
    apt-get install -y --no-install-recommends nodejs npm && \
    rm -rf /var/lib/apt/lists/*

# Install supergateway (wraps stdio MCP as HTTP/SSE)
RUN npm install -g supergateway

# Install the UniFi Network MCP
RUN pip install --no-cache-dir unifi-network-mcp

EXPOSE 8001

CMD ["supergateway", \
     "--outputTransport", "streamableHttp", \
     "--port", "8001", \
     "--stdio", "unifi-network-mcp"]
