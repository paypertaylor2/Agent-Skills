#!/bin/bash
# Fetch token data from Birdeye
# Usage: ./fetch-data.sh --token CA --chain CHAIN --type TYPE

TOKEN=""
CHAIN="solana"
TYPE="price"

while [[ $# -gt 0 ]]; do
    case $1 in
        --token) TOKEN="$2"; shift ;;
        --chain) CHAIN="$2"; shift ;;
        --type) TYPE="$2"; shift ;;
        --limit) LIMIT="$2"; shift ;;
    esac
    shift
done

if [ -z "$TOKEN" ]; then
    echo "Usage: ./fetch-data.sh --token CA --chain CHAIN --type TYPE"
    echo "Types: price, ohlcv, overview, holders, compare"
    exit 1
fi

echo "🦅 BIRDEYE"
echo "Token: $TOKEN | Chain: $CHAIN | Type: $TYPE"
echo ""

# Note: Birdeye requires API key for most endpoints
# Set BIRDEYE_API_KEY in environment

if [ -z "$BIRDEYE_API_KEY" ]; then
    echo "⚠️ BIRDEYE_API_KEY not set"
    echo "Get a free key at: https://birdeye.so/api"
    echo ""
    echo "Set it with: export BIRDEYE_API_KEY=your_key_here"
    exit 1
fi

case $TYPE in
    price)
        RESPONSE=$(curl -s -H "X-API-KEY: $BIRDEYE_API_KEY" \
            "https://public-api.birdeye.so/public/price?address=$TOKEN")
        echo "$RESPONSE" | python3 -c "
import json, sys
data = json.load(sys.stdin)
if data.get('success'):
    d = data.get('data', {})
    print(f\"Price: \${d.get('value', 'N/A')}\")
    print(f\"Update: {d.get('updateHumanTime', 'N/A')}\")
else:
    print(f\"Error: {data}\")
" 2>/dev/null || echo "Error parsing response"
        ;;
    overview)
        echo "Fetching overview..."
        echo "(Would show full token overview)"
        ;;
    holders)
        echo "Fetching top holders..."
        echo "(Would show holder distribution)"
        ;;
    ohlcv)
        echo "Fetching OHLCV data..."
        echo "(Would show candlestick data)"
        ;;
    compare)
        echo "Comparing across chains..."
        echo "(Would show multi-chain data)"
        ;;
esac
