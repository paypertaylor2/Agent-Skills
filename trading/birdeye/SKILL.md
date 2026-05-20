---
name: birdeye
description: Birdeye multi-chain token data integration. Fetch price, OHLCV, market cap, holder info, and trading history across Solana, Ethereum, BSC, and 20+ chains.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [trading, birdeye, multi-chain, price, ohlcv, defi]
    related_skills: [dexscreener, jupiter-swap, token-reader]
    requires_tools: [xurl]
---

# Birdeye

Birdeye multi-chain token data integration.

## When to Use
- Multi-chain token price checks
- OHLCV chart data
- Market cap comparison across chains
- Holder analysis
- Trading history review

## Supported Chains

- Solana
- Ethereum
- BSC
- Base
- Polygon
- Arbitrum
- Avalanche
- Optimism
- And 15+ more

## Data Available

- Current price (USD)
- OHLCV (1m, 5m, 15m, 1h, 4h, 1d, 1w)
- Market cap / FDV
- 24h volume
- Holder count
- Top holders
- All-time high / low
- Price change (1h, 24h, 7d, 30d)

## Scripts

```bash
# Get token price
./scripts/fetch-data.sh --token CA --chain solana --type price

# Get OHLCV
./scripts/fetch-data.sh --token CA --chain solana --type ohlcv --interval 1h

# Get market overview
./scripts/fetch-data.sh --token CA --chain solana --type overview

# Get top holders
./scripts/fetch-data.sh --token CA --chain solana --type holders --limit 20

# Compare across chains
./scripts/fetch-data.sh --token SYMBOL --type compare
```

## Output Format

```
🦅 BIRDEYE: $SYMBOL ([chain])

Price: $[price]
24h: [%] 🟢/🔴 | 7d: [%] 🟢/🔴
MC: $[mc] | FDV: $[fdv]
24h Vol: $[volume]
Holders: [count]

ATH: $[ath] ([date])
ATL: $[atl] ([date])

Top Holders:
1. [address]: [%] ($[value])
2. [address]: [%] ($[value])
3. [address]: [%] ($[value])
```

## Integration

- Use with [dexscreener](dexscreener/SKILL.md) for DEX-specific data
- Use with [jupiter-swap](jupiter-swap/SKILL.md) for Solana trading
- Use with [token-reader](../research/token-reader/SKILL.md) for full analysis
- Use with [whale-tracker](../research/whale-tracker/SKILL.md) for holder tracking
