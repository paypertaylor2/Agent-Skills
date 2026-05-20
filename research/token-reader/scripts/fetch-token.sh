#!/bin/bash
# Fetch token data from DexScreener
# Usage: ./fetch-token.sh CONTRACT_ADDRESS [CHAIN]

CA="$1"
CHAIN="${2:-solana}"

if [ -z "$CA" ]; then
    echo "Usage: ./fetch-token.sh CONTRACT_ADDRESS [CHAIN]"
    exit 1
fi

echo "🔍 Fetching token data..."
echo "CA: $CA"
echo "Chain: $CHAIN"
echo ""

# Fetch from DexScreener
RESPONSE=$(curl -s "https://api.dexscreener.com/latest/dex/tokens/$CA")

if echo "$RESPONSE" | grep -q '"pairs":null'; then
    echo "❌ No pairs found for this token on DexScreener"
    exit 1
fi

# Parse and display
echo "$RESPONSE" | python3 -c "
import json, sys
data = json.load(sys.stdin)
pairs = data.get('pairs', [])

if not pairs:
    print('No pairs found')
    sys.exit(1)

# Sort by volume
pairs.sort(key=lambda x: float(x.get('volume', {}).get('h24', 0)), reverse=True)
pair = pairs[0]

print('📊 TOKEN DATA')
print('=' * 40)
print(f\"Name: {pair.get('baseToken', {}).get('name', 'N/A')}\")
print(f\"Symbol: {pair.get('baseToken', {}).get('symbol', 'N/A')}\")
print(f\"Price: \${pair.get('priceUsd', 'N/A')}\")
print(f\"MC: \${pair.get('marketCap', pair.get('fdv', 'N/A'))}\")
print(f\"Liquidity: \${pair.get('liquidity', {}).get('usd', 'N/A')}\")
print(f\"24h Volume: \${pair.get('volume', {}).get('h24', 'N/A')}\")
print(f\"24h Change: {pair.get('priceChange', {}).get('h24', 'N/A')}%\")
print(f\"DEX: {pair.get('dexId', 'N/A')}\")
print(f\"Pair: {pair.get('pairAddress', 'N/A')}\")
print(f\"Chain: {pair.get('chainId', 'N/A')}\")
" 2>/dev/null || echo "Error parsing response. Raw data:"
echo "$RESPONSE" | head -20
