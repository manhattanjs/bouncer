source 'https://rubygems.org'

ruby '2.2.0'

gem 'rails', '4.2.0'
gem 'pg'
gem 'sass-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'uglifier', '>= 1.3.0'  # Use Uglifier as compressor for JavaScript assets
gem 'devise'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'activeadmin', github: 'activeadmin'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use debugger
# gem 'debugger', group: [:development, :test]


# Heroku
group :production do
  gem 'rails_12factor'
  gem 'memcachier'
  gem 'unicorn'
end

group :development do
  gem "guard"
  gem "guard-rspec"
  gem 'terminal-notifier-guard'
  gem 'annotate', github: 'ctran/annotate_models'
end

group :development, :test do
  gem 'fuubar', '~> 2.0.0' #rspec formatter
  gem 'rspec-rails', '~> 3.1.0'
  gem 'factory_girl_rails'
  gem 'thin', require: false
end

group :test do
  gem 'rake'
  gem "capybara", "~> 2.4.4"
  gem 'cucumber-rails', '~> 1.4', require: false
  gem 'database_cleaner'
end
