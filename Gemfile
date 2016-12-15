source 'https://rubygems.org'

ruby '2.3.1'

gem 'rails', '5.0.0.rc1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

gem 'jquery-rails'
# Tried a lot to resolve this issue. Added the below line with specific version(4.2.1) mentioned.
# In Rails 5 with Active admin and Jquery-rails, jquery-ui-rails issue was produced, becuase in jquery-rails,
# jquery-ui-rails's support was withdrawn. so, we need to explicitly add jquery-ui-rails for support.
# jqu-ui-rails 4.2.1 and above will support Rails 5, lower jqu-ui-rails version will not support Rails 5.
gem 'jquery-ui-rails', '~> 4.2.1'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'materialize-sass'
gem 'devise'
gem 'figaro'
gem 'rails_12factor'
gem 'annotate'
gem 'administrate', github: 'hayesr/administrate', branch: 'rails5_compat'
gem 'better_errors'

#Additional gems for application
#Active Admin gem for admin portal
# We need to mention below two gems to support Rails 5 with active admin.
gem 'activeadmin', '~> 1.0.0.pre4'
gem 'inherited_resources', github: 'activeadmin/inherited_resources'

#For Country select dropdown
gem 'country_select'

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  # gem 'sqlite3'
  gem 'mysql2', '>= 0.3.18', '< 0.5'
  gem 'awesome_print'
  gem 'spring-commands-rspec'
  gem 'bourbon'
end

group :development, :test do
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'capybara', git: 'git://github.com/jnicklas/capybara.git'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rspec_junit_formatter'
end

group :test do
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'database_cleaner'
  gem 'simplecov', require: false
  gem 'simplecov-csv', require: false
end

group :production do
  gem 'pg'
  gem 'puma'
end
