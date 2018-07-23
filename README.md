# User Auth

This is an implementation of the Hartl user authentication model, controllers, and helpers that can be easily copied into any new Rails 5 app.

## Usage

Add this to your `Gemfile`:

`gem 'user-auth', git: "https://github.com/dpaola2/user-auth"`

Then run the generator:

`bin/rails generate user_auth`

It will ask you if you'd like to overwrite the `user.rb` model. The answer is (usually) yes.