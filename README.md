# Bank-test

A simply Bank account code for a technical test exercise made in ruby.

## Tools

- Ruby 2.6.3p62
- Rspec as a test framework
- Rubocop and Simple cov as a linter

## Process

I have started by writing user stories that meets the requirements. After this, I had an idea of how I wanted my code to look like, so I started by spiking some code and making sure I was going in the right direction. 
Then I deleted everything, and started the `Red, Green, Refractor` process using IRB and Rspec as a test framework.

## Classes and methods

| Class | Method | Description |
|---|---|---|
| Atm | .deposit, .withdraw, .check_current_balance, .print_statement | Main class where you can deposit, withdraw, print statement or check your current balance |
| Bank | .add_transaction, .make_deposit, make_withdraw, .format_statement, .reset_values | Converts money into data and add it into a list of your trasactions to be converted later on |
| Statement | .display | It converts the list of your transactions into a human-visible-format |


## User stories 

```
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
```

### How to use it

- Open the console at the root of this file
- Type `irb -r ./lib/atm.rb`
- In 'irb', type: `atm = atm.new`
- Now you can `atm.deposit` money or `atm.withdraw` money into your atm
- To see your transactions, type `atm.print_statement`
- You should be able to see something like this

![alt text](https://github.com/jaitone/Bank-test/raw/master/Picture/img.png)
