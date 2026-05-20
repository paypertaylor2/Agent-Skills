#!/bin/bash
# Generate a shill post template
# Usage: ./generate-post.sh --token SYMBOL --ca CA --chain CHAIN --tone TONE

TOKEN=""
CA=""
CHAIN="solana"
TONE="degen"

while [[ $# -gt 0 ]]; do
    case $1 in
        --token) TOKEN="$2"; shift ;;
        --ca) CA="$2"; shift ;;
        --chain) CHAIN="$2"; shift ;;
        --tone) TONE="$2"; shift ;;
    esac
    shift
done

if [ -z "$TOKEN" ]; then
    echo "Usage: ./generate-post.sh --token SYMBOL --ca CA --chain CHAIN --tone TONE"
    echo "Tones: degen, professional, mysterious, community"
    exit 1
fi

case $TONE in
    degen)
        echo "🚀🚀 \$$TOKEN 🚀🚀"
        echo ""
        [ -n "$CA" ] && echo "CA: $CA"
        echo "Chain: $CHAIN"
        echo ""
        echo "THIS IS THE ONE 💎🙌"
        echo ""
        [ -n "$CA" ] && echo "🔗 dexscreener.com/$CHAIN/$CA"
        echo ""
        echo "WAGMI #\$$TOKEN #crypto"
        ;;
    professional)
        echo "\$$TOKEN — Worth watching."
        echo ""
        [ -n "$CA" ] && echo "CA: $CA"
        echo "Chain: $CHAIN"
        echo ""
        echo "Key points:"
        echo "• [point 1]"
        echo "• [point 2]"
        echo "• [point 3]"
        echo ""
        echo "DYOR but interesting."
        ;;
    mysterious)
        echo "Something's happening with \$$TOKEN..."
        echo ""
        [ -n "$CA" ] && echo "CA: $CA"
        echo "Chain: $CHAIN"
        echo ""
        echo "The smart money is watching. 👀"
        echo ""
        echo "Stay tuned."
        ;;
    community)
        echo "The \$$TOKEN community is growing 💪"
        echo ""
        [ -n "$CA" ] && echo "CA: $CA"
        echo "Chain: $CHAIN"
        echo ""
        echo "What makes this different:"
        echo "• [trait 1]"
        echo "• [trait 2]"
        echo ""
        echo "Welcome to the family, anon."
        echo ""
        echo "#\$$TOKEN"
        ;;
esac
