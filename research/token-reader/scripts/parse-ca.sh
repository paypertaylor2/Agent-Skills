#!/bin/bash
# Parse contract address and detect chain
# Usage: ./parse-ca.sh CONTRACT_ADDRESS

CA="$1"

if [ -z "$CA" ]; then
    echo "Usage: ./parse-ca.sh CONTRACT_ADDRESS"
    exit 1
fi

echo "🔍 Analyzing contract address: $CA"
echo ""

# Detect chain by format
if [[ "$CA" =~ ^0x[a-fA-F0-9]{40}$ ]]; then
    echo "Chain: EVM (Ethereum / BSC / Base / Polygon / etc.)"
    echo "Format: Hex address (42 chars)"
    echo ""
    echo "To determine specific chain, check:"
    echo "  - Etherscan: https://etherscan.io/token/$CA"
    echo "  - BSCScan: https://bscscan.com/token/$CA"
    echo "  - BaseScan: https://basescan.org/token/$CA"
elif [[ "$CA" =~ ^[1-9A-HJ-NP-Za-km-z]{32,44}$ ]]; then
    echo "Chain: Solana"
    echo "Format: Base58 address"
    echo ""
    echo "Check:"
    echo "  - Solscan: https://solscan.io/token/$CA"
    echo "  - DexScreener: https://dexscreener.com/solana/$CA"
else
    echo "⚠️ Unknown address format"
    echo "Length: ${#CA} characters"
    echo ""
    echo "Could be:"
    echo "  - Truncated address"
    echo "  - Different chain format"
    echo "  - Invalid address"
fi
