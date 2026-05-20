---
name: token-reader
description: Analyze Web3 tokens by contract address. Fetches on-chain data, market info, holder distribution, liquidity, and social metrics. Supports Solana, Ethereum, BSC, Base, Polygon, and other EVM chains.
version: 1.0.0
author: Agent
license: MIT
platforms: [macos, linux]
metadata:
  hermes:
    tags: [research, crypto, token, on-chain, dexscreener, birdeye, solana, evm]
    related_skills: [whale-tracker, trend-scanner, sentiment-analyzer, dexscreener, birdeye]
    requires_tools: [xurl]
---

# Token Reader

Analyze Web3 tokens by contract address.

## When to Use
- Researching a new token before buying
- Due diligence on a project
- Monitoring your portfolio tokens
- Comparing tokens in the same category
- Writing research reports

## Supported Chains

See [references/chains.md](references/chains.md) for chain-specific details.

- Solana (SOL)
- Ethereum (ETH)
- BSC (BNB)
- Base
- Polygon (MATIC)
- Arbitrum
- Avalanche (AVAX)
- Optimism

## Data Sources

See [references/data-sources.md](references/data-sources.md) for API details.

- **DexScreener** — Price, volume, liquidity, pairs
- **Birdeye** — Multi-chain token data, OHLCV
- **DexTools** — Charts, holder analysis
- **Solscan / Etherscan** — On-chain transactions
- **X Search** — Social sentiment and mentions

## Required Inputs

| Input | Required | Description |
|-------|----------|-------------|
| Contract address | Yes | Token contract address |
| Chain | Auto-detected | Will attempt to detect from CA format |

## Analysis Output

### Token Overview
```
Token: $SYMBOL (Name)
Chain: [chain]
CA: [contract address]

Price: $[price]
MC: $[market cap] | FDV: $[fdv]
Liquidity: $[liquidity]
24h Volume: $[volume]
24h Change: [% change]

Holders: [count]
Top 10: [% held by top 10]

Social:
- X followers: [count]
- Telegram: [count]
- Website: [url]
```

### Risk Assessment
```
Risk Score: [1-10]

✅ Liquidity locked: [yes/no + details]
✅ Contract renounced: [yes/no]
✅ Top holder concentration: [%]
✅ Mint authority: [enabled/disabled]
✅ Honeypot check: [pass/fail]
⚠️ [Any warnings]
```

## Procedure

1. Receive contract address
2. Detect chain from address format
3. Fetch data from DexScreener / Birdeye
4. Analyze holder distribution
5. Check contract risks (honeypot, mint, etc.)
6. Search X for social sentiment
7. Compile report
8. Present findings

## Scripts

```bash
# Fetch token data
./scripts/fetch-token.sh [contract_address] [chain]

# Parse contract for risks
./scripts/parse-ca.sh [contract_address] [chain]
```

## Safety Flags

- **Honeypot:** Token can be bought but not sold
- **Mint authority:** Creator can mint unlimited tokens
- **Low liquidity:** Easy to manipulate price
- **High concentration:** Few wallets hold most supply
- **No social presence:** No X, TG, or website
- **Copycat name:** Similar to existing project

## Integration with Other Skills

- Use [whale-tracker](../whale-tracker/SKILL.md) to monitor big wallets
- Use [trend-scanner](../trend-scanner/SKILL.md) to track social mentions
- Use [sentiment-analyzer](../sentiment-analyzer/SKILL.md) for sentiment analysis
- Use [shiller](../../social-media/shiller/SKILL.md) to create content about findings
