#!/usr/bin/env bash
set -euo pipefail

URL="http://localhost:8000/"
TIMEOUT=5
EXPECTED_CODE=200


HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" --max-time "$TIMEOUT" "$URL" 2>/dev/null || echo "000")

if [ "$HTTP_CODE" = "$EXPECTED_CODE" ]; then
    echo "OK: $HTTP_CODE"
    exit 0
else
    echo "FAIL: $HTTP_CODE (expected: $EXPECTED_CODE)"
    exit 1
fi

