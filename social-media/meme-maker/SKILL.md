---
name: meme-maker
description: Create memes and viral content for X. Generates meme concepts, formats, captions, and image descriptions. Supports classic meme formats, crypto memes, reaction memes, and custom templates.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [social-media, meme, viral, content, x, twitter, xurl]
    related_skills: [shiller, thread-writer]
    requires_tools: [xurl]
---

# Meme Maker

Create memes and viral content for X.

## When to Use
- Creating meme posts for engagement
- Reacting to market events with humor
- Building brand personality
- Riding trending meme formats
- Community engagement through memes

## Meme Formats

See [templates/meme-prompts.md](templates/meme-prompts.md) for a full list of formats.

### Classic Formats
- Drake pointing (prefer/not prefer)
- Distracted boyfriend
- Woman yelling at cat
- This is fine dog
- Galaxy brain / expanding brain
- Surprised Pikachu
- Trade offer (this for that)

### Crypto-Specific
- Not losing your bag (coping diamond hands)
- Number go up
- Wraith (I it)
- Stonks / Not stonks
- Aped in / Out the other side
- REKT

### Viral Formats
- Me explaining to my [person]
- Nobody: / Absolutely nobody:
- Me: *does thing* / Also me: *does worse thing*
- [Group] before X / [Group] after X

## Procedure

1. Identify the topic/event to meme
2. Select appropriate format
3. Write caption (setup + punchline)
4. Describe the image (for generation or manual creation)
5. Add hashtags if needed
6. Post via xurl with media

## Caption Style

- Keep it short (under 280 chars including image)
- Setup on top, punchline on bottom
- Use contrast (expectation vs reality)
- Reference current events/trends
- Inside jokes resonate with crypto audiences

## Posting Memes

```bash
# Upload media first
xurl media upload ./meme.png --alt "Meme about [topic]"

# Post with caption
xurl post "Caption text #meme #crypto"
```

## Best Practices

- Post memes during high-activity hours (9-11 AM, 5-7 PM EST)
- Engage with replies quickly
- Don't over-post memes (max 2-3/day)
- Match meme tone to your brand
- Credit original formats when possible

## Meme Campaign Ideas

- Weekly meme roundup
- Meme contests (community submits)
- Reaction memes to market events
- Trending format adaptations
- Educational memes (explain concepts through humor)
