# unifi-mcp

Containerized [sirkirby/unifi-mcp](https://github.com/sirkirby/unifi-mcp) Network MCP server, wrapped with supergateway for HTTP/SSE transport.

Runs on port 3112 as part of the `mcp-shared` Portainer stack.

## Required env vars

| Var | Description |
|-----|-------------|
| `UNIFI_HOST` | UniFi controller IP or hostname |
| `UNIFI_USERNAME` | Local admin account (not SSO) |
| `UNIFI_PASSWORD` | Account password |
| `UNIFI_VERIFY_SSL` | `false` for self-signed certs |
| `UNIFI_TOOL_PERMISSION_MODE` | `bypass` for automated use |
