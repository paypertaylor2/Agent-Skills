---
name: thread-writer
description: Write viral threads on any topic. Structures long-form content into engaging X threads with hooks, storytelling, data, and CTAs. Supports educational, narrative, listicle, and hot-take thread formats.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [social-media, thread, content, writing, x, twitter, xurl]
    related_skills: [shiller, reply-guy, daily-digest]
    requires_tools: [xurl]
---

# Thread Writer

Write viral threads on any topic for X.

## When to Use
- Sharing knowledge or insights
- Telling a story
- Breaking down complex topics
- Building authority
- Driving engagement and followers

## Thread Formats

See [references/thread-formats.md](references/thread-formats.md) for detailed format guides.

### Educational Thread
```
Hook: "Most people don't understand [topic]. Here's the truth:"
Body: Step-by-step breakdown (5-10 tweets)
CTA: "Follow me @handle for more on [topic]"
```

### Narrative Thread
```
Hook: "6 months ago, I [situation]. Here's what happened:"
Body: Story arc with tension and resolution
CTA: "If this resonated, repost the first tweet 🔄"
```

### Listicle Thread
```
Hook: "10 [topic] tips that changed my [outcome]:"
Body: Numbered list (1/ 2/ 3/...)
CTA: "Which one hit hardest? Reply below 👇"
```

### Hot Take Thread
```
Hook: "Unpopular opinion: [controversial take]"
Body: Evidence and reasoning
CTA: "Agree or disagree? Let me know 👇"
```

## Viral Patterns

See [references/viral-patterns.md](references/viral-patterns.md) for what makes threads go viral.

Key elements:
- **Hook:** First tweet must stop the scroll
- **Pattern interrupt:** Break expectations
- **Value density:** Every tweet must earn the next
- **Emotional arc:** Build tension, deliver payoff
- **CTA:** Always end with engagement prompt

## Procedure

1. Choose topic and angle
2. Select thread format
3. Write the hook (most important tweet)
4. Outline body tweets (5-15 recommended)
5. Write each tweet (under 280 chars)
6. Add numbering (1/ 2/ 3/...)
7. Write CTA for final tweet
8. Review flow and edit
9. Post thread via xurl

## Posting Threads

```bash
# Post first tweet
xurl post "Hook tweet"

# Reply to your own tweet for each subsequent tweet
xurl reply POST_ID "2/ Second tweet content"
xurl reply POST_ID "3/ Third tweet content"
# ... and so on
```

## Best Practices

- Hook tweet is 80% of success
- Keep tweets short and punchy
- Use line breaks for readability
- Include visuals when possible (charts, screenshots)
- Post threads during peak hours
- Engage with all replies in the first hour
- Pin your best threads
