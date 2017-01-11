source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.0.1'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# gem 'grom'
gem 'grom', git: "https://github.com/ukpds/grom", branch: "development"
gem 'json-ld', '2.1.0'
gem 'vcard'
gem 'pugin', path: './pugin'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # In development and test environments, use the dotenv gem
  gem 'dotenv-rails'

  # Use foreman as a gem in dev and test to orchestrate both the app and api
  gem 'foreman'
  gem 'subcontractor', '0.8.0'
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'web-console'
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'webmock'
  gem 'simplecov', require: false
  gem 'rails-controller-testing'
  gem 'shoulda-matchers'
end

# Gems required for Docker containers
gem 'passenger'
gem 'therubyracer'


