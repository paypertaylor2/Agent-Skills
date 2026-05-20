---
name: dexscreener
description: DexScreener integration for DEX trading data. Fetch price, volume, liquidity, pair info, and chart data for any token on any DEX. Supports Solana, Ethereum, BSC, Base, and 70+ chains.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [trading, dexscreener, dex, price, solana, evm, defi]
    related_skills: [token-reader, jupiter-swap, birdeye]
    requires_tools: [xurl]
---

# DexScreener

DexScreener integration for DEX trading data.

## When to Use
- Checking token price and chart
- Comparing DEX pairs
- Monitoring liquidity changes
- Tracking new pair creation
- Research before trading

## Data Available

- Current price (USD and native)
- Price change (5m, 1h, 6h, 24h)
- Volume (5m, 1h, 6h, 24h)
- Liquidity (USD)
- FDV / Market Cap
- Pair address
- DEX name
- Transaction count
- Creator address
- Pair age

## Procedure

1. Receive token CA or pair address
2. Fetch data from DexScreener API
3. Parse and format results
4. Present with context

## Scripts

```bash
# Search for token
./scripts/fetch-pairs.sh --query "SYMBOL"

# Get pair by CA
./scripts/fetch-pairs.sh --address CA --chain solana

# Get top pairs by volume
./scripts/fetch-pairs.sh --chain solana --sort volume --limit 20

# Get new pairs
./scripts/fetch-pairs.sh --chain solana --sort pairAge --limit 10
```

## Output Format

```
📊 DEXSCREENER: $SYMBOL / $BASE

Price: $[price]
24h Change: [%] 🟢/🔴
24h Volume: $[volume]
Liquidity: $[liquidity]
FDV: $[fdv]

Pair: [pair_address]
DEX: [dex_name]
Chain: [chain]
Age: [age]

Buys/Sells (24h): [buys] / [sell]
Txns (24h): [count]
```

## Integration

- Use with [token-reader](../research/token-reader/SKILL.md) for full token analysis
- Use with [jupiter-swap](jupiter-swap/SKILL.md) for Solana trading
- Use with [birdeye](birdeye/SKILL.md) for multi-chain comparison
- Use with [whale-tracker](../research/whale-tracker/SKILL.md) for whale activity
