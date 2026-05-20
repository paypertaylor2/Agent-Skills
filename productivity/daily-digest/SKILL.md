---
name: daily-digest
description: Generate and post a daily X digest. Summarizes timeline activity, trending topics, notable posts, and market moves into a morning summary thread.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [productivity, digest, daily, summary, x, twitter, xurl]
    related_skills: [trend-scanner, sentiment-analyzer, thread-writer]
    requires_tools: [xurl]
---

# Daily Digest

Generate and post a daily X digest.

## When to Use
- Morning routine automation
- Content creation
- Community engagement
- Staying on top of trends

## Digest Format

See [references/digest-format.md](references/digest-format.md) for format options.

### Standard Format
```
☀️ Good morning! Here's your [date] digest:

📰 Top Stories:
1. [story summary] — @source
2. [story summary] — @source
3. [story summary] — @source

📈 Market:
- $TOKEN: [%] 🟢/🔴
- $TOKEN: [%] 🟢/🔴

🔥 Trending:
- #hashtag ([X] mentions)
- "narrative" ([X] mentions)

💬 Notable:
- @user: "[excerpt]"

Have a great day! 🚀
```

## Procedure

1. Fetch timeline from last 24 hours
2. Search for trending topics
3. Check token prices (if tracking any)
4. Identify notable posts
5. Compile digest
6. Post as thread or single post

## Automation

Set up as a cron job:
```yaml
# ~/.hermes/cron/daily-digest.yaml
schedule: "0 8 * * *"  # 8 AM daily
prompt: >
  Generate today's X digest. Check my timeline, trending topics,
  and any tokens I'm tracking. Post a morning summary thread.
```

## Customization

- Add/remove sections based on your interests
- Include specific tokens to track
- Adjust tone (professional, casual, degen)
- Include or exclude market data
- Add community highlights
