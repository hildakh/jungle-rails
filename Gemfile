source 'https://rubygems.org'
ruby "3.2.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.0'
# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.6'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

gem 'puma'

gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-rails'
gem 'json', '~> 2.0'
gem 'money-rails', '~> 1.15.0'
gem 'carrierwave'
gem 'rmagick'
gem 'stripe'
gem 'faker'
gem 'concurrent-ruby', '< 1.3.4'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'rspec-rails'
  gem 'byebug'
  gem 'dotenv-rails'

  gem 'capybara'
  gem 'database_cleaner'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 4.2'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'newrelic_rpm'
  gem 'rails_12factor'
  # gem 'pg', '~>1.1.4'
end
