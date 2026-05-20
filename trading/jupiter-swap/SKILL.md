---
name: jupiter-swap
description: Jupiter aggregator integration for Solana token swaps. Get quotes, execute swaps, and manage slippage. Supports all Solana tokens with Jupiter liquidity.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [trading, jupiter, swap, solana, defi, aggregator]
    related_skills: [dexscreener, birdeye, token-reader]
    requires_tools: [xurl]
---

# Jupiter Swap

Jupiter aggregator integration for Solana token swaps.

## When to Use
- Getting swap quotes on Solana
- Finding best routes for swaps
- Checking slippage estimates
- Researching swap feasibility

## Important

This skill provides **quotes and route information only**. Actual swap execution requires wallet integration and explicit user confirmation. Never execute swaps without user approval.

## Features

- Get swap quotes (input amount → output amount)
- Compare routes across all Solana DEXes
- Estimate slippage
- Check price impact
- Find best execution path

## Procedure

1. Receive swap request (token in, token out, amount)
2. Fetch quote from Jupiter API
3. Display route, price impact, and slippage
4. Require explicit user confirmation
5. If confirmed, provide swap transaction data

## Scripts

```bash
# Get quote
./scripts/swap.sh --input SOL --output CA --amount 1.0 --slippage 1.0

# Get quote (USDC to token)
./scripts/swap.sh --input USDC --output CA --amount 100 --slippage 0.5

# Check if route exists
./scripts/swap.sh --check --input SOL --output CA
```

## Output Format

```
🔄 JUPITER QUOTE

Input: [amount] $INPUT ($[value])
Output: [amount] $OUTPUT ($[value])
Rate: 1 $INPUT = [rate] $OUTPUT

Route: [route_description]
Price Impact: [%]
Slippage: [%]
Fee: $[fee]

Best Route:
1. [DEX1]: [% of swap]
2. [DEX2]: [% of swap]

⚠️ Requires wallet confirmation to execute
```

## Safety

- Always show full quote before any action
- Never auto-execute swaps
- Warn on high price impact (>5%)
- Warn on low liquidity pairs
- Verify contract addresses before quoting

## Integration

- Use with [dexscreener](dexscreener/SKILL.md) for market context
- Use with [token-reader](../research/token-reader/SKILL.md) for token research
- Use with [birdeye](birdeye/SKILL.md) for price validation
