# SydneySister
General Assembly Web Development Immersive Project 2

https://sydneysister.herokuapp.com/

Sydney Sister is an e-commerce fast fashion web application, built in Ruby on Rails. This app allows users to browse the store, add items to their cart and place an order.


## Features
* Users can browse the store by categories such as new releases, dresses, shirts etc. 
* A customer can create a user account by signing up or login if they are a returning customer.
* You must sign up to make a purchase with basic info - name, email address & password - then upon checkout you will be asked for your shipping information so you are able to easily change the delivery location if you are a returning customer. 
* Links to social media pages
* Customers can add items to their shopping cart and checkout
* Once you have signed up you will receive a welcome email
* Admin has a seperate UI where they are able to add/edit product information


## Models and Associations
![](https://github.com/jacquimik/Project2/blob/master/models_and_associations.png)

## Api's and Gems

* [mail](https://github.com/mikel/mail)
* [stripe](https://stripe.com/docs/api/ruby)
* [bycrpt](https://github.com/codahale/bcrypt-ruby)
* [annotate](https://github.com/ctran/annotate_models)
* [foundation-rails](https://github.com/zurb/foundation-rails)


## Known Bugs
* If you sign in and your login details are incorrect, no errors are shown in the browser
* Fix Strike payment integration
* Fix instagram stream
* Rewrite query for showing all stock. It currently hows stock for each category instead of product resulting in duplication. There are two parts to solving this problem. The first is fixing the seed data and second is fixing the query

## What's next
* Add end to end testing
* Abstract queries out into query modules
* Make app mobile responsive
* Add stricter validations to models
* Create a service that stores events for every order created(Ruby/Elixir)

## Future Features
* When a customer has placed an order, notify them with an order confirmation via email/txt
* Login via facebook
* Share promotional posts on facebook for discounts
* Easily discount stock through admin UI
* Add contact us form
* Show prices in different currencies
* Add more business logic around shopping cart deals/promotions





