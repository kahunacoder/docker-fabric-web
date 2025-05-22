#!/bin/sh
tailscale up
fabric --serve &  # Background process
cd /web/web
exec npm run dev # Foreground process (replaces the shell to retain PID 1)

