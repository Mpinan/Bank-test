# Bank-test

## User stories 

As a user
So I can be organize with money
I'd like to have a bank account

As a user so I can see my money
I'd like to see my balance

As a user
So I can spend money from my card
I'd like to deposit money

As a user
So I can user the money in my bank account
I'd like to withdraw money

As a user
So I can see when I made any transaction
I'd like to see a date

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
