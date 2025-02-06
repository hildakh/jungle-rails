# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Demo


https://github.com/user-attachments/assets/1c2fb2a0-87ae-41a0-8b5a-284a78b61cad


## Screenshots
### Home Page
![](https://github.com/hildakh/jungle-rails/blob/master/docs/Home%20Page.png?raw=true)

### Shopping Cart
![](https://github.com/hildakh/jungle-rails/blob/master/docs/cart.png?raw=true)

### Order Confirmation
![](https://github.com/hildakh/jungle-rails/blob/master/docs/shopping%20confirmation.png?raw=true)

### Admin Sales Page
![](https://github.com/hildakh/jungle-rails/blob/master/docs/sales.png?raw=true)


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `.env` by copying `.env.example`
4. Run `bin/rake db:reset` to create, load and seed db
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `rails s` to start the server
9. To access admin menu, set admin user name and password in the .env file based on .env.example

## Stripe Testing

Use Credit Card # 4242424242424242 with a valid future date
and any 3-digit as CVC for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>
