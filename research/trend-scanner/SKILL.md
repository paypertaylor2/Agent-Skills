---
name: trend-scanner
description: Scan X for trending topics, tokens, and narratives. Identifies emerging trends, viral posts, and growing communities. Tracks hashtag velocity, mention volume, and sentiment shifts.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [research, trends, x, twitter, social, scanning, xurl]
    related_skills: [sentiment-analyzer, token-reader, whale-tracker]
    requires_tools: [xurl]
---

# Trend Scanner

Scan X for trending topics, tokens, and narratives.

## When to Use
- Finding trending tokens before they pump
- Identifying emerging narratives
- Tracking hashtag velocity
- Monitoring competitor mentions
- Content research and ideation

## Scan Types

### Token Trends
Search for token mentions, CA shilling, and new launches:
- "just launched" + "CA:"
- "gem" + "solana" / "base" / "eth"
- "presale" + "live"
- "$" + ticker symbols

### Narrative Trends
Track broader market narratives:
- "AI agents" / "AI narrative"
- "RWA" / "real world assets"
- "DePIN" / "depin"
- "L2" / "layer 2"
- "restaking" / "eigenlayer"

### Hashtag Velocity
Monitor hashtag growth rate:
- Track mentions per hour
- Identify accelerating hashtags
- Compare to historical averages

## Procedure

1. Define scan parameters (topics, keywords, timeframe)
2. Run search queries via xurl
3. Analyze mention volume and velocity
4. Identify top trending items
5. Cross-reference with on-chain data
6. Generate trend report

## Scripts

```bash
# Scan for trending tokens
./scripts/scan-trends.sh --type tokens --timeframe 24h

# Scan for narrative trends
./scripts/scan-trends.sh --type narratives --timeframe 7d

# Scan specific keyword
./scripts/scan-trends.sh --keyword "AI agents" --timeframe 12h
```

## Output Format

```
📈 TREND REPORT — [Timeframe]

Top Trending:
1. $TOKEN — [X] mentions ([%] change)
2. #HASHTAG — [X] uses ([%] change)
3. "NARRATIVE" — [X] mentions ([%] change)

Emerging (low volume, high velocity):
- $NEW_TOKEN — [X] mentions (new)
- #NEW_TAG — [X] uses (new)

Declining:
- $OLD_TOKEN — [X] mentions ([%] down)

Generated: [timestamp]
```

## Integration

- Use with [sentiment-analyzer](../sentiment-analyzer/SKILL.md) for sentiment on trends
- Use with [token-reader](../token-reader/SKILL.md) to research trending tokens
- Use with [shiller](../../social-media/shiller/SKILL.md) to create trend-based content
- Use with [thread-writer](../../social-media/thread-writer/SKILL.md) to write about trends
- Set up as cron job for hourly/daily scans
