# Target Configuration

## Target List Format

```yaml
# ~/.hermes/config/auto-engage-targets.yaml

targets:
  # High priority — engage daily
  - username: "@nousresearch"
    actions: [like, reply]
    frequency: 3
    priority: high
    notes: "AI research lab, relevant content"

  - username: "@solana"
    actions: [like, repost]
    frequency: 2
    priority: high
    notes: "Solana ecosystem"

  # Medium priority — engage 2-3x/week
  - username: "@aeyakovenko"
    actions: [like]
    frequency: 1
    priority: medium
    notes: "Solana co-founder"

  - username: "@raj_gokal"
    actions: [like]
    frequency: 1
    priority: medium
    notes: "Solana CEO"

  # Low priority — engage occasionally
  - username: "@elonmusk"
    actions: [like]
    frequency: 1
    priority: low
    notes: "High visibility, low frequency"
```

## Target Categories

### Builders
People building in your space. Engage genuinely with their content.

### Influencers
High-follower accounts. Engage for visibility.

### Community
Accounts at your level. Engage for mutual growth.

### Projects
Official project accounts. Engage for relationship building.

## Target Selection Criteria

- Posts content relevant to your niche
- Active (posts at least 3-5x/week)
- Engages with replies (not just broadcasts)
- 10K-500K followers (engagement sweet spot)
- Not a competitor (unless strategic)

## Rotation Strategy

- Daily: 5-10 high-priority targets
- Weekly: 10-20 medium-priority targets
- Monthly: Review and update target list
- Remove: Inactive accounts, changed niche
- Add: New accounts in your space
