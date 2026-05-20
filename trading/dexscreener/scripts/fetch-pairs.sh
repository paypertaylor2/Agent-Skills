#!/bin/bash
# Fetch DEX pair data from DexScreener
# Usage: ./fetch-pairs.sh --query SYMBOL
#        ./fetch-pairs.sh --address CA --chain CHAIN
#        ./fetch-pairs.sh --chain CHAIN --sort volume --limit 20

QUERY=""
ADDRESS=""
CHAIN="solana"
SORT="volume"
LIMIT=10

while [[ $# -gt 0 ]]; do
    case $1 in
        --query) QUERY="$2"; shift ;;
        --address) ADDRESS="$2"; shift ;;
        --chain) CHAIN="$2"; shift ;;
        --sort) SORT="$2"; shift ;;
        --limit) LIMIT="$2"; shift ;;
    esac
    shift
done

echo "📊 DEXSCREENER"
echo "Chain: $CHAIN | Sort: $SORT | Limit: $LIMIT"
echo ""

if [ -n "$ADDRESS" ]; then
    RESPONSE=$(curl -s "https://api.dexscreener.com/latest/dex/tokens/$ADDRESS")
    echo "$RESPONSE" | python3 -c "
import json, sys
data = json.load(sys.stdin)
pairs = data.get('pairs', [])
if not pairs:
    print('No pairs found')
    sys.exit(1)
for p in pairs[:5]:
    print(f\"Token: {p.get('baseToken',{}).get('symbol','?')}/{p.get('quoteToken',{}).get('symbol','?')}\")
    print(f\"  Price: \${p.get('priceUsd','N/A')}\")
    print(f\"  MC: \${p.get('marketCap', p.get('fdv', 'N/A'))}\")
    print(f\"  Liq: \${p.get('liquidity',{}).get('usd','N/A')}\")
    print(f\"  Vol 24h: \${p.get('volume',{}).get('h24','N/A')}\")
    print(f\"  DEX: {p.get('dexId','N/A')}\")
    print(f\"  Chain: {p.get('chainId','N/A')}\")
    print()
" 2>/dev/null || echo "Error parsing response"
fi

if [ -n "$QUERY" ]; then
    RESPONSE=$(curl -s "https://api.dexscreener.com/latest/dex/search?q=$QUERY")
    echo "$RESPONSE" | python3 -c "
import json, sys
data = json.load(sys.stdin)
pairs = data.get('pairs', [])
if not pairs:
    print('No pairs found')
    sys.exit(1)
for p in pairs[:$LIMIT]:
    print(f\"Token: {p.get('baseToken',{}).get('symbol','?')}/{p.get('quoteToken',{}).get('symbol','?')}\")
    print(f\"  Price: \${p.get('priceUsd','N/A')}\")
    print(f\"  Vol 24h: \${p.get('volume',{}).get('h24','N/A')}\")
    print(f\"  DEX: {p.get('dexId','N/A')} | Chain: {p.get('chainId','N/A')}\")
    print()
" 2>/dev/null || echo "Error parsing response"
fi
