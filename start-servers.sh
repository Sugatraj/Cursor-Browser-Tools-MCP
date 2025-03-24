#!/bin/bash

echo "Starting Browser Tools Server..."
cd "$(dirname "$0")/browser-tools-server" && node dist/browser-connector.js &
SERVER_PID=$!

echo ""
echo "Waiting for Browser Tools Server to initialize..."
sleep 5

echo ""
echo "Starting Browser Tools MCP Server..."
cd "$(dirname "$0")/browser-tools-mcp" && node dist/mcp-server.js &
MCP_PID=$!

echo ""
echo "Both servers started! You can now use the Browser Tools MCP in Cursor."
echo ""
echo "1. Configure Chrome extension"
echo "2. In Cursor, press Cmd+Shift+P (or Ctrl+Shift+P on Windows)"
echo "3. Choose 'Cursor Settings' and scroll to MCP section"
echo "4. Add a new MCP server with:"
echo "   Name: Browser Tools MCP"
echo "   Command: node $(pwd)/browser-tools-mcp/dist/mcp-server.js"
echo ""
echo "Press Ctrl+C to stop both servers."

# Handle termination signal
trap "kill $SERVER_PID $MCP_PID; exit" INT TERM

# Wait for processes
wait 