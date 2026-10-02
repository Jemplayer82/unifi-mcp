<p align="center"><img src="assets/fathom-header-banner.svg" alt="Fathom Works — unifi-mcp" width="100%"></p>

# `$ unifi-mcp`

**Lets an AI assistant look at and manage your UniFi network.** It packages the [sirkirby/unifi-mcp](https://github.com/sirkirby/unifi-mcp) Network server in a container so other programs can reach it over the web.

**In plain terms:** UniFi is the brand of router and Wi-Fi gear that runs your network. MCP is a plug-in format that lets an AI assistant use a tool. This project is the plug-in that connects the two. It is for people who run their own UniFi network and want an AI assistant to work with it.

*A [Fathom Works](https://github.com/Jemplayer82) project.*

## `[ usage ]`

The container wraps the server with supergateway, a small helper that turns it into an HTTP/SSE web service. It runs on port 3112 as part of the `mcp-shared` Portainer stack. Portainer is a tool for managing containers.

## `[ configuration ]`

Set these environment variables (settings passed to the container) before you start it.

| Var | What it does |
|-----|--------------|
| `UNIFI_HOST` | UniFi controller IP or hostname |
| `UNIFI_USERNAME` | Local admin account (not SSO) |
| `UNIFI_PASSWORD` | Account password |
| `UNIFI_VERIFY_SSL` | `false` for self-signed certs |
| `UNIFI_TOOL_PERMISSION_MODE` | `bypass` for automated use |

## `[ license ]`

No license file is included in this repository.

<img src="assets/fathom-footer-banner.svg" alt="Fathom Works — sound the depths before you set a course" width="100%">
