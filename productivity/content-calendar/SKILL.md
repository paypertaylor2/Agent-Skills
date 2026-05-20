---
name: content-calendar
description: Plan and schedule X content. Create content calendars, schedule posts, and manage a content pipeline. Supports daily, weekly, and monthly planning.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [productivity, content, calendar, scheduling, x, twitter, xurl]
    related_skills: [thread-writer, shiller, daily-digest]
    requires_tools: [xurl]
---

# Content Calendar

Plan and schedule X content.

## When to Use
- Planning a week of content
- Scheduling posts in advance
- Managing a content pipeline
- Coordinating campaigns
- Maintaining consistent posting

## Calendar Format

See [references/calendar-template.md](references/calendar-template.md) for templates.

### Weekly Template
```
WEEK OF [date]

Monday:
- 9 AM: Daily digest thread
- 2 PM: Educational thread about [topic]
- 7 PM: Engagement (reply to 5 posts)

Tuesday:
- 9 AM: Daily digest
- 12 PM: Meme post
- 5 PM: Quote tweet with commentary

Wednesday:
- 9 AM: Daily digest
- 2 PM: Thread: "[hot take]"
- 7 PM: Engagement

Thursday:
- 9 AM: Daily digest
- 12 PM: Token analysis post
- 5 PM: Reply to mentions

Friday:
- 9 AM: Daily digest
- 2 PM: Week recap thread
- 7 PM: Community engagement

Weekend:
- 12 PM: Casual/meme post
- As needed: Reply to engagement
```

## Content Types

| Type | Frequency | Best Time |
|------|-----------|-----------|
| Daily digest | Daily 9 AM | Morning |
| Educational thread | 2-3x/week | Afternoon |
| Meme | 1-2x/week | Midday |
| Quote tweet | Daily | Afternoon |
| Engagement | 2x/day | Morning/Evening |
| Token analysis | 1-2/week | Afternoon |
| Week recap | Friday | Afternoon |

## Procedure

1. Define content goals for the week
2. Select content types and frequency
3. Draft posts in advance
4. Schedule via Hermes cron
5. Review and adjust weekly

## Scheduling

```yaml
# Example cron entries for a content calendar

# Monday thread
schedule: "0 14 * * 1"
prompt: "Write and post an educational thread about [topic]"

# Daily meme
schedule: "0 12 * * 1-5"
prompt: "Create and post a crypto meme"

# Weekly recap
schedule: "0 14 * * 5"
prompt: "Write and post a week recap thread summarizing the best content"
```

## Best Practices

- Post 2-4 times per day
- Mix content types
- Engage between posts
- Track what performs best
- Adjust calendar based on analytics
- Keep a backlog of content ideas
