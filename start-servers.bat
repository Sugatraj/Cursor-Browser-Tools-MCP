@echo off
echo Starting Browser Tools Server...
start cmd /k "cd %~dp0browser-tools-server && node dist/browser-connector.js"

echo.
echo Waiting for Browser Tools Server to initialize...
timeout /t 5 /nobreak > nul

echo.
echo Starting Browser Tools MCP Server...
start cmd /k "cd %~dp0browser-tools-mcp && node dist/mcp-server.js"

echo.
echo Both servers started! You can now use the Browser Tools MCP in Cursor.
echo.
echo 1. Configure Chrome extension
echo 2. In Cursor, press Cmd+Shift+P (or Ctrl+Shift+P on Windows)
echo 3. Choose "Cursor Settings" and scroll to MCP section
echo 4. Add a new MCP server with:
echo    Name: Browser Tools MCP
echo    Command: node C:/Users/sugat/Documents/Cursor MCP/browser-tools-mcp/dist/mcp-server.js
echo.
echo Press any key to close this window...
pause > nul 