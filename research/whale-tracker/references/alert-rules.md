# Alert Rules

## Default Thresholds

### Solana
| Tier | Threshold | Label |
|------|-----------|-------|
| Small | > 10 SOL | Fish |
| Medium | > 100 SOL | Whale |
| Large | > 1,000 SOL | Mega Whale |
| Huge | > 10,000 SOL | Leviathan |

### Ethereum
| Tier | Threshold | Label |
|------|-----------|-------|
| Small | > 1 ETH | Fish |
| Medium | > 10 ETH | Whale |
| Large | > 100 ETH | Mega Whale |
| Huge | > 1,000 ETH | Leviathan |

### BSC
| Tier | Threshold | Label |
|------|-----------|-------|
| Small | > 5 BNB | Fish |
| Medium | > 50 BNB | Whale |
| Large | > 500 BNB | Mega Whale |
| Huge | > 5,000 BNB | Leviathan |

## Alert Conditions

### Accumulation Alert
- Single buy > threshold
- Multiple buys from same wallet within 1 hour
- New wallet with large balance appears

### Distribution Alert
- Single sell > threshold
- Multiple sells from same wallet within 1 hour
- Known whale wallet decreasing position

### Transfer Alert
- Wallet-to-wallet transfer > threshold
- Transfer to/from known exchange
- Transfer to new/unknown wallet

### Dump Alert
- Rapid sell-off (>3 sells in 10 minutes)
- Price dropping >10% with high volume
- Multiple whales selling simultaneously

## Alert Format

```
🐋 WHALE ALERT

Token: $SYMBOL
Chain: [chain]
Type: [accumulation/distribution/transfer/dump]

Wallet: [short_address]
Amount: $[value] ([native_amount])
TX: [tx_hash_link]

Context:
- Wallet age: [days]
- Previous trades: [count]
- Estimated PnL: [+/-%]

Time: [timestamp]
```

## Filtering

### Ignore
- Known exchange wallets (Binance, Coinbase, etc.)
- DEX router contracts
- Burn addresses
- Known team wallets (if disclosed)

### Prioritize
- Wallets with history of profitable trades
- Wallets that previously accumulated before pumps
- New wallets with large balances
- Wallets connected to known smart money
