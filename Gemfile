# Gemfile for pactweb
source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '~> 4.0.0'

gem 'devise'
gem 'cancan'
gem 'rolify'
gem 'figaro'
gem 'simple_form'
gem 'slim'
gem 'activeadmin', github: 'gregbell/active_admin'
gem "meta_search"   #, '>= 1.1.0.pre'
gem 'redcarpet'
gem 'rouge'
gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
gem 'sass-rails' #,   '~> 3.2.3'
gem 'event-calendar', :require => 'event_calendar'
gem 'google-analytics-rails'
gem 'twitter'
gem 'koudoku'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails' #, '~> 3.2.1'
  gem 'uglifier'     #, '>= 1.0.3'
  gem 'zurb-foundation', '~> 4.0.0'
end

group :development do
  gem 'sqlite3'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'letter_opener'
  gem "rspec-rails", "~> 2.0"
end

group :test do
  gem 'sqlite3'
  gem "rspec-rails", "~> 2.0"
  gem 'cucumber'
  gem 'capybara'
end

group :production do
  gem 'pg'
  gem 'activerecord-postgresql-adapter'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby'   #, '~> 3.0.0'

