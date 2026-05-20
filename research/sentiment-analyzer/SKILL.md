---
name: sentiment-analyzer
description: Analyze sentiment on tokens, topics, and projects using X data. Scores sentiment from -100 (extremely bearish) to +100 (extremely bullish). Tracks sentiment shifts over time and generates alerts for extreme moves.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [research, sentiment, analysis, x, twitter, social, xurl]
    related_skills: [trend-scanner, token-reader, whale-tracker]
    requires_tools: [xurl]
---

# Sentiment Analyzer

Analyze sentiment on tokens, topics, and projects using X data.

## When to Use
- Gauging market sentiment before trading
- Tracking sentiment shifts around events
- Comparing sentiment across tokens
- Identifying extreme fear/greed moments
- Research for content creation

## Scoring System

See [references/scoring.md](references/scoring.md) for detailed scoring methodology.

| Score | Label | Description |
|-------|-------|-------------|
| +80 to +100 | Extreme Greed | Euphoria, moon talk, all-in |
| +40 to +79 | Bullish | Positive, buying, accumulating |
| -39 to +39 | Neutral | Mixed or no strong sentiment |
| -40 to -79 | Bearish | Negative, selling, worried |
| -80 to -100 | Extreme Fear | Panic, crash talk, capitulation |

## Analysis Factors

### Positive Signals
- "buying" / "accumulating" / "diamond hands"
- "moon" / "lambo" / "WAGMI"
- Price targets above current
- Partnership announcements
- Development updates
- Community growth

### Negative Signals
- "selling" / "dumping" / "paper hands"
- "rug" / "scam" / "dead"
- Price targets below current
- Team criticism
- Competitor comparisons (unfavorable)
- FUD spreading

### Neutral Signals
- Price discussion without direction
- Technical analysis
- News sharing without opinion
- Questions about the project

## Procedure

1. Define target (token, topic, or project)
2. Search X for mentions
3. Analyze post content and context
4. Score each mention
5. Calculate aggregate sentiment
6. Compare to historical baseline
7. Generate report

## Scripts

```bash
# Analyze sentiment for a token
./scripts/sentiment.sh --token $SYMBOL --timeframe 24h

# Analyze sentiment for a topic
./scripts/sentiment.sh --topic "AI agents" --timeframe 7d

# Compare multiple tokens
./scripts/sentiment.sh --compare $TOKEN1 $TOKEN2 $TOKEN3
```

## Output Format

```
📊 SENTIMENT REPORT: $SYMBOL
Timeframe: [timeframe]

Overall Score: [score] ([label])

Breakdown:
- Positive: [X] posts ([%])
- Neutral: [X] posts ([%])
- Negative: [X] posts ([%])

Key Themes:
✅ [positive theme 1]
✅ [positive theme 2]
⚠️ [negative theme 1]
⚠️ [negative theme 2]

Notable Posts:
- @user: "[excerpt]" ([sentiment])
- @user: "[excerpt]" ([sentiment])

Trend: [improving/declining/stable]
vs Last Period: [+/- change]
```

## Integration

- Use with [trend-scanner](../trend-scanner/SKILL.md) for volume context
- Use with [token-reader](../token-reader/SKILL.md) for fundamental context
- Use with [whale-tracker](../whale-tracker/SKILL.md) for whale behavior context
- Use with [shiller](../../social-media/shiller/SKILL.md) — adjust tone based on sentiment
- Set up as cron job for daily sentiment tracking
