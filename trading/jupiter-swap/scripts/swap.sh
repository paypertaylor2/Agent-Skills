#!/bin/bash
# Jupiter swap quote
# Usage: ./swap.sh --input TOKEN --output TOKEN --amount AMOUNT --slippage BPS

INPUT=""
OUTPUT=""
AMOUNT=""
SLIPPAGE=50

while [[ $# -gt 0 ]]; do
    case $1 in
        --input) INPUT="$2"; shift ;;
        --output) OUTPUT="$2"; shift ;;
        --amount) AMOUNT="$2"; shift ;;
        --slippage) SLIPPAGE="$2"; shift ;;
        --check) CHECK=true; shift ;;
    esac
    shift
done

if [ -z "$INPUT" ] || [ -z "$OUTPUT" ]; then
    echo "Usage: ./swap.sh --input TOKEN --output TOKEN --amount AMOUNT [--slippage BPS]"
    echo ""
    echo "Examples:"
    echo "  ./swap.sh --input SOL --output CA --amount 1.0 --slippage 50"
    echo "  ./swap.sh --input USDC --output CA --amount 100 --slippage 100"
    exit 1
fi

echo "🔄 JUPITER SWAP QUOTE"
echo "Input: $INPUT → Output: $OUTPUT"
echo ""

# Known mint addresses
SOL_MINT="So11111111111111111111111111111111111111112"
USDC_MINT="EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v"

INPUT_MINT="$INPUT"
OUTPUT_MINT="$OUTPUT"

[[ "$INPUT" == "SOL" ]] && INPUT_MINT="$SOL_MINT"
[[ "$INPUT" == "USDC" ]] && INPUT_MINT="$USDC_MINT"
[[ "$OUTPUT" == "SOL" ]] && OUTPUT_MINT="$SOL_MINT"
[[ "$OUTPUT" == "USDC" ]] && OUTPUT_MINT="$USDC_MINT"

if [ -n "$AMOUNT" ]; then
    # Get quote from Jupiter
    RESPONSE=$(curl -s "https://quote-api.jup.ag/v6/quote?inputMint=$INPUT_MINT&outputMint=$OUTPUT_MINT&amount=$(echo "$AMOUNT * 1000000" | bc | cut -d. -f1)&slippageBps=$SLIPPAGE" 2>/dev/null)

    echo "$RESPONSE" | python3 -c "
import json, sys
data = json.load(sys.stdin)
if 'error' in data:
    print(f\"Error: {data['error']}\")
    sys.exit(1)

print(f\"Input: {data.get('inAmount', 'N/A')} {data.get('inputMint', 'N/A')}\")
print(f\"Output: {data.get('outAmount', 'N/A')} {data.get('outputMint', 'N/A')}\")
print(f\"Price Impact: {data.get('priceImpactPct', 'N/A')}%\")
print(f\"Slippage: $SLIPPAGE bps\")
print()
print('Route:')
for r in data.get('routePlan', []):
    print(f\"  {r.get('swapInfo',{}).get('label','?')}: {r.get('percent',0)}%\")
" 2>/dev/null || echo "Error parsing quote. Raw response:"
    echo "$RESPONSE" | head -5
else
    echo "Checking if route exists..."
    echo "Input mint: $INPUT_MINT"
    echo "Output mint: $OUTPUT_MINT"
fi

echo ""
echo "⚠️ This is a quote only. Wallet confirmation required to execute."
