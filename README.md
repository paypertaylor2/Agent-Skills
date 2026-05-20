# Agent Skills

> Custom Hermes skills for X automation, crypto research, trading, and content creation.

## Installation

```bash
# Clone the repo
git clone https://github.com/paypertaylor2/agent-skills.git

# Copy skills to Hermes
cp -r agent-skills/skills/* ~/.hermes/skills/

# Or install individual skills
cp -r agent-skills/skills/social-media/shiller ~/.hermes/skills/social-media/shiller
```

## Skill Categories

### Social Media (`social-media/`)

| Skill | Description |
|-------|-------------|
| [shiller](social-media/shiller/SKILL.md) | Generate crypto token shill posts for X |
| [meme-maker](social-media/meme-maker/SKILL.md) | Create memes and viral content for X |
| [thread-writer](social-media/thread-writer/SKILL.md) | Write viral threads on any topic |
| [reply-guy](social-media/reply-guy/SKILL.md) | Smart reply and engagement automation |
| [quote-tweet](social-media/quote-tweet/SKILL.md) | Generate quote tweets with commentary |

### Research (`research/`)

| Skill | Description |
|-------|-------------|
| [token-reader](research/token-reader/SKILL.md) | Analyze Web3 tokens by contract address |
| [whale-tracker](research/whale-tracker/SKILL.md) | Track big wallet movements on-chain |
| [trend-scanner](research/trend-scanning/SKILL.md) | Scan X for trending topics and tokens |
| [sentiment-analyzer](research/sentiment-analyzer/SKILL.md) | Analyze sentiment on tokens and topics |

### Trading (`trading/`)

| Skill | Description |
|-------|-------------|
| [dexscreener](trading/dexscreener/SKILL.md) | DexScreener integration for DEX data |
| [jupiter-swap](trading/jupiter-swap/SKILL.md) | Jupiter aggregator for Solana swaps |
| [birdeye](trading/birdeye/SKILL.md) | Birdeye multi-chain token data |

### Productivity (`productivity/`)

| Skill | Description |
|-------|-------------|
| [daily-digest](productivity/daily-digest/SKILL.md) | Morning X digest and summary |
| [auto-engage](productivity/auto-engage/SKILL.md) | Auto-like and reply to targeted accounts |
| [content-calendar](productivity/content-calendar/SKILL.md) | Plan and schedule X content |

## Skill Format

Each skill follows the [Hermes skill standard](https://github.com/NousResearch/hermes-agent):

```
skill-name/
├── SKILL.md          # Required — YAML frontmatter + Markdown body
├── references/       # Optional — additional documentation
├── scripts/          # Optional — helper scripts
├── templates/        # Optional — output templates
└── assets/           # Optional — supplementary files
```

## Creating a New Skill

Use the [skill builder SDK](../sdk/packages/skill-builder/):

```bash
npx @agent/skill-builder create my-skill
```

Or use the [template](../templates/skill/SKILL.md.template).

## Related Repos

- [Agent Docs](https://github.com/paypertaylor2/Agent) — Main documentation
- [Agent SDK](https://github.com/paypertaylor2/agent-sdk) — TypeScript SDK
- [Agent Templates](https://github.com/paypertaylor2/agent-templates) — Skill templates
- [Agent Scripts](https://github.com/paypertaylor2/agent-scripts) — Install scripts
- [Agent Plugins](https://github.com/paypertaylor2/agent-plugins) — Extended plugins
- [Agent Site](https://github.com/paypertaylor2/agent-site) — Landing site

## License

MIT
