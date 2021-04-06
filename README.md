# README

This is a Cafeteria Application build using Ruby on Rails application and SQLite Database.

Rails 6.1.3.1 \
Ruby 3.0.0

Database: SQLite3/development \
Tables: Menus, Order, Order_Items, Users

<h3>How to run this project?</h3>

1. Check if you have rbenv, node, yarn, bundler, ruby, rails installed on your local machine using the following commands
```
rbenv --version 
node --version
yarn --version
bundler --version
ruby --version
rails --version
```
2. Install rbenv, node, yarn, bundler, ruby, rails on your local machine.
```
brew install rbenv
brew install node
brew install npm
brew install yarn
brew install rails
brew install bundler
brew install ruby
```
3. Install the webpacker using the following command.
```
bundle exec rake webpacker:install
```
4. Now use the following commands to set up the database
```
bundle e rails db:setup
bundle e rails db:migrate
```
5. To make the Payment Gateway working: \
   a. Create a developer mode account on Stripe \
   b. Find the API keys under the Developers Section \
   c. Now, paste the Publishable key in the file apps/views/carts/show.html.erb 
6. Now run the project(without integration with Stripe) 
```
rails s
OR 
bundle execute rails s
```
To run the project with payment gateway integration 
```
SECRET_KEY=<YOUR_SECRET_KEY> PUBLISHABLE_KEY=<YOUR_PUBLISHABLE_KEY> rails s
```
 
<h6>Some Possible Refinements</h6>

1. Give the ability to the Cafeteria Owner to check the number of billing Clerks and assign them jobs. 
2. Give the ability to the Billing Clerk to create the order status for the given item. 
3. Enhancement in UI. 
4. Give the ability to the Customer to check the availability of tables in the cafeteria and book one accordingly. 
5. Work on the Payment Gateway Integration. 


