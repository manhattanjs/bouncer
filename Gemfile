source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.1.0'
gem 'pg'
gem 'sass-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'uglifier', '>= 1.3.0'  # Use Uglifier as compressor for JavaScript assets
gem 'devise'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'figaro'
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'foundation-rails'
gem 'unicorn', require: false # Use unicorn as the app server

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

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
  gem 'fuubar', '2.0.0.beta1' #rspec formatter
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'factory_girl_rails'
  gem 'thin', require: false
end

group :test do
  gem 'rake'
  gem "capybara", "~> 2.2.0"
  gem 'cucumber-rails', '~> 1.4', require: false
  gem 'database_cleaner'
end
