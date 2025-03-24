# Browser Tools MCP Setup Instructions

This guide will help you set up Browser Tools MCP to use with Cursor, allowing you to debug web applications directly through your AI assistant.

## Step 1: Chrome Extension Setup

1. Open Chrome and go to `chrome://extensions/`
2. Enable "Developer mode" in the top-right corner
3. Click "Load unpacked"
4. Navigate to the `chrome-extension` folder in this repository and select it
5. The Browser Tools MCP extension should now appear in your extensions list
6. Click on the extension icon in your browser toolbar to verify it's connected

## Step 2: Starting the Servers

### Option 1: Using the batch file (Recommended for Windows)
Simply double-click the `start-servers.bat` file in this repository. This will start both servers in separate command windows.

### Option 2: Manual startup
1. Start the Browser Tools Server:
   ```
   cd browser-tools-server
   node dist/browser-connector.js
   ```

2. In a separate terminal, start the MCP Server:
   ```
   cd browser-tools-mcp
   node dist/mcp-server.js
   ```

## Step 3: Configure Cursor

1. Open Cursor
2. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
3. Select "Cursor Settings"
4. Scroll down to the MCP section
5. Click "Add a New MCP Server"
6. Enter the following details:
   - Name: `Browser Tools MCP`
   - Command: `node C:/Users/sugat/Documents/Cursor MCP/browser-tools-mcp/dist/mcp-server.js`
7. Click "Add"
8. Wait for the "Connected" status to appear

## Step 4: Using Browser Tools MCP

You can now use the following commands in Cursor's AI assistant:

- `gather console logs` - Get all console logs from the browser
- `get network errors` - Get network error logs
- `take a screenshot` - Capture the current browser view
- `debug` - Run a complete debug sequence (if you've set up the Cursor rule)

### Setting up a Debug Command (Optional)

1. Create a folder named `cursor` in your project
2. Create a subfolder named `rules`
3. Create a file named `debugcommands.mdc` with the following content:
   ```
   description: This tool performs debugging steps for applications
   match: "**/*.ts"
   ---
   When I say debug, gather console logs and take a screenshot of the app to help fix issues
   ```

Now you can simply type `/debug` in Cursor to run all debugging steps automatically.

## Troubleshooting

- If the extension isn't connecting, make sure both servers are running
- Check Chrome's console for any extension errors
- Ensure you've entered the correct path in Cursor's MCP settings
- If using WSL, run everything outside of Ubuntu, using Windows paths 