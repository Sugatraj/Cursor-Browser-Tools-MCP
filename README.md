# Cursor Browser Tools MCP

A configured setup of [AgentDeskAI's Browser Tools MCP](https://github.com/AgentDeskAI/browser-tools-mcp) for use with Cursor IDE.

This repository contains everything you need to enable browser debugging capabilities in Cursor through the Model Context Protocol (MCP).

## Features

- Monitor browser console logs directly in Cursor
- Capture screenshots of your browser window
- Analyze network requests/errors
- Debug web applications with AI assistance
- Run accessibility, performance, SEO, and best practices audits

## Setup Instructions

### Prerequisites

- [Cursor IDE](https://cursor.sh/)
- Google Chrome browser
- Node.js installed

### Installation

1. Clone this repository:
```bash
git clone https://github.com/yourusername/cursor-browser-tools-mcp.git
cd cursor-browser-tools-mcp
```

2. Install the Chrome extension:
   - Open Chrome and go to `chrome://extensions/`
   - Enable "Developer mode" in the top-right corner
   - Click "Load unpacked"
   - Navigate to the `chrome-extension` folder in this repository and select it

3. Start the servers:
   - For Windows: Run `start-servers.bat`
   - For Mac/Linux: Run `./start-servers.sh`

4. Configure Cursor:
   - Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
   - Select "Cursor Settings"
   - Scroll down to the MCP section
   - Add a new MCP server with:
     - Name: `Browser Tools MCP`
     - Command: `node C:/Users/sugat/Documents/Cursor MCP/browser-tools-mcp/dist/mcp-server.js`
     - (Replace the path with your actual path to the repository)

## Usage

Once set up, you can use commands like:

- "Gather console logs"
- "Take a screenshot of my browser"
- "Get network errors"
- "Debug this page"

## Troubleshooting

- If the extension isn't connecting, make sure both servers are running
- Check Chrome's console for any extension errors
- Ensure you've entered the correct path in Cursor's MCP settings
- If using WSL, run everything outside of Ubuntu, using Windows paths

## Acknowledgements

This project leverages the work done by [AgentDeskAI](https://github.com/AgentDeskAI/browser-tools-mcp) and adapts it for easier use with Cursor.
