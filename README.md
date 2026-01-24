# Hopsule Homebrew Tap

Official Homebrew tap for Hopsule CLI tools.

## Installation

```bash
brew tap hopsule/tap
brew install hopsule
```

Or in one command:

```bash
brew install hopsule/tap/hopsule
```

## Usage

```bash
# Show version
hopsule --version

# Show help
hopsule --help

# Configure CLI
hopsule config

# List decisions
hopsule list

# Create decision
hopsule create

# Get decision details
hopsule get <id>

# Accept decision
hopsule accept <id>

# Deprecate decision
hopsule deprecate <id>

# Show status
hopsule status
```

## Configuration

First time setup:

```bash
hopsule config
```

This will prompt you for:
- **API URL**: Your decision-api endpoint (e.g., `http://localhost:8080`)
- **Project ID**: Your project identifier
- **Auth Token**: Your JWT authentication token

Configuration is saved to `~/.decision-cli/config.yaml`

## Environment Variables

Alternatively, you can use environment variables:

```bash
export DECISION_API_URL=http://localhost:8080
export DECISION_PROJECT=<project-id>
export DECISION_TOKEN=<jwt-token>

hopsule list
```

## Available Tools

- **hopsule** - Decision-first workflow management CLI

## Links

- [CLI Tool Repository](https://github.com/Hopsule/cli-tool)
- [Documentation](https://github.com/Hopsule/cli-tool#readme)
- [Decision API](https://github.com/Hopsule/api)
- [Web App](https://github.com/Hopsule/web-app)

## Development

To test the formula locally:

```bash
brew install --build-from-source --verbose ./Formula/hopsule.rb
```

## Support

For issues and questions:
- CLI Tool: https://github.com/Hopsule/cli-tool/issues
- Tap: https://github.com/Hopsule/homebrew-tap/issues
