source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby('2.7.1')

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem('rails', '~> 6.0.3', '>= 6.0.3.2')
# Use sqlite3 as the database for Active Record
gem('puma')
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
gem('bcrypt')
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem('bootsnap', require: false)

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem('rack-cors')
# Add JSON Token Auth
gem('jwt')

# Use PostGress as Database for Active Records
gem('pg')

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem('byebug', platforms: %i[mri mingw x64_mingw])
  # Test Rails
  gem('rspec-rails')
end

group :development do
  gem('foreman')
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem('web-console')
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem('listen')
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem('spring')
  # Extention of Spring
  gem('spring-watcher-listen')
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem('capybara')
  # Easy installation and use of web drivers to run system tests with browsers
  gem('webdrivers')
  # Help Populate Test Database
  gem('database_cleaner')
  gem('factory_bot_rails')
  gem('faker')
  gem('shoulda-matchers')
end

group :production do
  # Add a Postgrade server
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem('tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby])
