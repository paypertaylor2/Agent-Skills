---
name: whale-tracker
description: Track big wallet movements on-chain. Monitors large transactions, whale accumulations, and smart money flows across Solana, Ethereum, BSC, and other chains. Generates alerts for significant movements.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [research, crypto, whale, on-chain, tracking, solana, evm]
    related_skills: [token-reader, trend-scanner, dexscreener]
    requires_tools: [xurl]
---

# Whale Tracker

Track big wallet movements on-chain.

## When to Use
- Monitoring whale accumulation/distribution
- Tracking smart money flows
- Getting alerts on large transactions
- Researching token holder behavior
- Identifying potential pumps/dumps early

## Alert Rules

See [references/alert-rules.md](references/alert-rules.md) for detailed alert configurations.

### Default Thresholds

| Chain | Whale Threshold | Mega Whale |
|-------|----------------|------------|
| Solana | > 100 SOL | > 10,000 SOL |
| Ethereum | > 10 ETH | > 1,000 ETH |
| BSC | > 50 BNB | > 5,000 BNB |
| Base | > 10 ETH | > 1,000 ETH |

### Alert Types
- **Accumulation:** Whale buying large amounts
- **Distribution:** Whale selling large amounts
- **Transfer:** Large wallet-to-wallet movement
- **New whale:** New wallet with large balance appears
- **Dumping:** Rapid sell-off detected

## Procedure

1. Define target tokens or wallets to monitor
2. Set alert thresholds per chain
3. Run tracking script (manual or cron)
4. Analyze movements
5. Generate alerts for significant activity
6. Optionally post alerts to X

## Scripts

```bash
# Track specific token
./scripts/track-whales.sh --token CA --chain solana

# Track specific wallet
./scripts/track-whales.sh --wallet WALLET_ADDRESS --chain eth

# Track multiple tokens
./scripts/track-whales.sh --list tokens.txt
```

## Output Format

```
🐋 WHALE ALERT

Token: $SYMBOL
Chain: [chain]
Type: [accumulation/distribution/transfer]

Wallet: [short_address]
Amount: $[value]
TX: [tx_hash]

Context:
- Wallet age: [days]
- Previous trades: [count]
- PnL: [estimated]

Time: [timestamp]
```

## Integration

- Use with [token-reader](../token-reader/SKILL.md) for token context
- Use with [trend-scanner](../trend-scanner/SKILL.md) for social correlation
- Use with [shiller](../../social-media/shiller/SKILL.md) to create content about whale activity
- Set up as cron job for continuous monitoring

## Safety Notes

- Whale movements don't always predict price
- Some whales are exchanges (not individual traders)
- Always cross-reference with other data
- Don't blindly follow whale trades
