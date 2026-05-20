---
name: quote-tweet
description: Generate quote tweets with commentary. Creates insightful, funny, or provocative quote tweets that add value to existing posts. Supports multiple commentary styles.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [social-media, quote-tweet, engagement, x, twitter, xurl]
    related_skills: [reply-guy, thread-writer]
    requires_tools: [xurl]
---

# Quote Tweet

Generate quote tweets with commentary for X.

## When to Use
- Adding your take to a trending post
- Agreeing and amplifying with added value
- Respectfully disagreeing with context
- Providing expert commentary
- Humor/contrast with original post

## Commentary Styles

See [references/quote-formats.md](references/quote-formats.md) for format examples.

### Add Value
- Adds new information the original missed
- Provides data or sources
- Extends the argument
- "This. And also..."

### Expert Take
- Leverages domain knowledge
- Provides nuanced perspective
- "As someone who works in [field]..."

### Hot Take
- Contrarian viewpoint
- Challenges the mainstream take
- Respectful but direct

### Humor
- Pokes fun at the situation
- Self-deprecating or observational
- Not mean-spirited

### Story
- Personal anecdote related to the topic
- "This reminds me of when..."
- Makes it relatable

## Procedure

1. Find a quotable post (from search, timeline, or mentions)
2. Read and understand the original
3. Select commentary style
4. Draft quote (under 280 chars)
5. Review — does it add value?
6. Post via xurl

## Posting

```bash
xurl quote POST_ID "Your commentary here"
```

## Best Practices

- Quote tweets get more reach than replies
- First 2 hours after original post is peak time
- Tag relevant accounts if appropriate
- Don't just repeat the original — add something
- Engage with replies to your quote tweet
- Don't quote the same account too frequently
