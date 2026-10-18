#!/bin/bash
export HOME=/opt/data/home
source /opt/data/home/.config/opencode/omniroute.env
cd /host/opt/aimotech-landing
exec /host/usr/local/bin/opencode web --port 4096 --hostname 0.0.0.0
