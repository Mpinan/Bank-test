# Bank-test

A simply Bank account code for a technical test exercise made in ruby.

## Tools

- Ruby 2.6.3p62
- Rspec as a test framework
- Rubocop and Simple cov as a linter

## Process

I have started by writing user stories that meets the requirements. After this, I had an idea of how I wanted my code to look like, so I started by spiking some code and making sure I was going in the right direction. 
Then I deleted everything, and started the `Red, Green, Refractor` process using IRB and Rspec as a test framework.

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
- Type `irb -r ./lib/bank_account.rb`
- In 'irb', type: `account = Account.new`
- Now you can `account.deposit` money or `account.withdraw` money into your account
- To see your transactions, type `account.print_statement`
- You should be able to see something like this

![alt text](https://github.com/jaitone/Bank-test/raw/master/Picture/img.png)
