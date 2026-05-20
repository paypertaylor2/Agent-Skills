---
name: auto-engage
description: Automated engagement with targeted accounts. Like, reply to, and repost from accounts in your niche. Configurable targets, frequency limits, and engagement rules.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [productivity, automation, engagement, x, twitter, xurl]
    related_skills: [reply-guy, shiller]
    requires_tools: [xurl]
---

# Auto Engage

Automated engagement with targeted accounts.

## When to Use
- Building presence in your niche
- Growing your network
- Increasing visibility
- Community engagement at scale

## Target Configuration

See [references/targets.md](references/targets.md) for target list format.

Define target accounts:
```yaml
# ~/.hermes/config/auto-engage-targets.yaml
targets:
  - username: "@nousresearch"
    actions: [like, reply]
    frequency: 3  # max actions per day
    priority: high

  - username: "@elonmusk"
    actions: [like]
    frequency: 1
    priority: low

  - username: "@solana"
    actions: [like, repost]
    frequency: 2
    priority: medium
```

## Engagement Rules

- Like 5-10 posts per hour max
- Reply to 2-3 posts per hour max
- Don't engage with the same account more than 3x/day
- Only engage with recent posts (< 2 hours old)
- Skip posts you've already engaged with
- Vary reply content (no duplicates)

## Procedure

1. Load target list
2. Fetch recent posts from each target
2. Filter for engagement-worthy content
3. Execute actions (like, reply, repost)
4. Log actions to avoid duplicates
5. Report summary

## Scripts

```bash
# Run engagement round
~/.hermes/skills/productivity/auto-engage/scripts/engage.sh

# Dry run (no actual actions)
~/.hermes/skills/productivity/auto-engage/scripts/engage.sh --dry-run

# Show stats
~/.hermes/skills/productivity/auto-engage/scripts/engage.sh --stats
```

## Automation

```yaml
# Cron: Run every 2 hours
schedule: "0 */2 * * *"
prompt: >
  Run auto-engage. Like and reply to recent posts from target accounts.
  Follow engagement limits. Report what you did.
```

## Safety

- Stay within X rate limits
- Don't spam or look bot-like
- Vary timing between actions
- Periodically review and update targets
- Stop if account gets warnings
