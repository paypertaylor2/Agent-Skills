#!/bin/bash
# Meme concept generator
# Usage: ./meme-gen.sh --topic TOPIC --format FORMAT

TOPIC=""
FORMAT="drake"

while [[ $# -gt 0 ]]; do
    case $1 in
        --topic) TOPIC="$2"; shift ;;
        --format) FORMAT="$2"; shift ;;
    esac
    shift
done

if [ -z "$TOPIC" ]; then
    echo "Usage: ./meme-gen.sh --topic TOPIC [--format FORMAT]"
    echo "Formats: drake, distracted, galaxy-brain, this-is-fine, trade-offer, nobody"
    exit 1
fi

echo "🎨 MEME CONCEPT: $TOPIC ($FORMAT)"
echo ""

case $FORMAT in
    drake)
        echo "Top panel (rejecting): Not researching $TOPIC"
        echo "Bottom panel (approving): Researching $TOPIC before buying"
        ;;
    distracted)
        echo "Boyfriend: Your current portfolio"
        echo "Girlfriend: $TOPIC"
        echo "Other girl: The next pump"
        ;;
    galaxy-brain)
        echo "Small brain: Buying $TOPIC at ATH"
        echo "Medium brain: Buying $TOPIC at dip"
        echo "Large brain: Researching $TOPIC before buying"
        echo "Galaxy brain: Making $TOPIC"
        ;;
    this-is-fine)
        echo "[Person sitting in burning room]"
        echo "Caption: 'Watching my $TOPIC bags while the market crashes. This is fine.'"
        ;;
    trade-offer)
        echo "I receive: 100x on $TOPIC"
        echo "You receive: A lesson in DYOR"
        ;;
    nobody)
        echo "Nobody:"
        echo "Absolutely nobody:"
        echo "Me: Buying more $TOPIC"
        ;;
esac
