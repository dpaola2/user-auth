# User Auth for Rails (rapid prototyping)

## What you get

- User model and migration, w/ hashed password using `bcrypt` and "remember me" functionality
- Controllers, Views, and Helpers for signing up, logging in and out, and changing your password

## Usage

Add this to your `Gemfile`:

`gem 'user-auth', git: "https://github.com/dpaola2/user-auth"`

Then run the generator:

`bin/rails generate user_auth`

It will ask you if you'd like to overwrite the `user.rb` model. The answer is (usually) yes.

Don't forget to run `bin/rake db:migrate` after you're happy with the generated code.
