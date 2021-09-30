# Piggy Bank

## User Stories
```
As a user,
So that I can save money
I can put coins in my piggy bank

As a user,
So that I know whether there are coins in my piggy bank
I can shake it, and it will “cling” if there is money in it

As a user,
So I can enjoy my hard earned savings
I can break my piggy bank and get back the number or coins that I had put in
```

## Domain Model
| Objects | Methods | Messages |
|---------|----------|----------|
| User | |
| Piggy_Bank | add_coins | |
|  | shake_piggy_bank | if coins > 0 "cling"|
|  | break_piggy_bank | return coin_count |