source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.3'
gem 'pg'
gem 'sass-rails', '~> 4.0.0'
gem 'jbuilder', '~> 1.2' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jquery-rails'
gem 'uglifier', '>= 1.3.0'  # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.0.0' # Use CoffeeScript for .js.coffee assets and views
gem 'devise'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'figaro'
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'foundation-rails'
gem 'unicorn', require: false # Use unicorn as the app server


# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


# Heroku
group :production do
  gem 'rails_12factor'
  gem 'memcachier'
end

group :development do
  gem "guard"
  gem "guard-rspec"
  gem 'terminal-notifier-guard'
end

group :development, :test do
  gem 'fuubar' #rspec formatter
  gem 'rspec-rails', '~> 2.10'
  gem 'factory_girl_rails'
  gem 'thin', require: false
end

group :test do
  gem 'rake'
  gem "capybara", "~> 2.2.0"
  gem 'cucumber-rails', '~> 1.4', require: false
  gem 'database_cleaner'
end
