# Sentiment Scoring

## Scoring Scale

| Score | Label | Description |
|-------|-------|-------------|
| +80 to +100 | Extreme Greed | Euphoria, moon talk, all-in mentality |
| +40 to +79 | Bullish | Positive, buying, accumulating |
| -39 to +39 | Neutral | Mixed signals or no strong sentiment |
| -40 to -79 | Bearish | Negative, selling, worried |
| -80 to -100 | Extreme Fear | Panic, crash talk, capitulation |

## Positive Keywords (+10 to +30 each)
- "buying" / "accumulating" / "diamond hands" (+20)
- "moon" / "lambo" / "WAGMI" / "to the moon" (+25)
- "partnership" / "collaboration" (+15)
- "breaking out" / "pumping" (+20)
- "undervalued" / "gem" / "early" (+15)
- "bullish" / "long" / "bid" (+10)
- "development" / "building" / "shipping" (+10)
- "community growing" / "holders increasing" (+10)

## Negative Keywords (-10 to -30 each)
- "selling" / "dumping" / "paper hands" (-20)
- "rug" / "scam" / "dead" / "ghost chain" (-30)
- "crash" / "capitulation" / "panic" (-25)
- "overvalued" / "top" / "sell" (-15)
- "bearish" / "short" / "put" (-10)
- "FUD" / "concerned" / "worried" (-10)
- "team inactive" / "no development" (-15)
- "competitor better" / "obsolete" (-10)

## Neutral Keywords (0 to ±5)
- Price discussion without direction
- Technical analysis
- News sharing without opinion
- Questions about the project

## Calculation

1. Score each mention individually
2. Weight by follower count (larger accounts = more weight)
3. Weight by engagement (likes + reposts)
4. Calculate weighted average
5. Normalize to -100 to +100 scale

## Context Adjustments

### Time Decay
- Posts from last 6 hours: 100% weight
- Posts from 6-12 hours: 70% weight
- Posts from 12-24 hours: 40% weight

### Account Quality
- Verified accounts: 1.5x weight
- Accounts with >10K followers: 1.2x weight
- New accounts (<30 days): 0.5x weight
- Likely bots: 0x weight (excluded)

### Volume Factor
- High volume (>100 mentions/hour): Confidence high
- Medium volume (10-100/hour): Confidence medium
- Low volume (<10/hour): Confidence low
