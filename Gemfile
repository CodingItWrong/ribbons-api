source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'rails', '~> 6.1.4', '< 7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.5'
gem 'rack-cors'
gem 'jsonapi-resources'
gem 'bcrypt'
gem 'doorkeeper'
gem 'dotenv-rails'
gem 'nokogiri', '>= 1.11.0.rc4'

group :development do
  gem 'listen', '>= 3.0.5', '< 3.8'
end

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'coderay'
  gem 'rubocop'
end

group :test do
  gem 'factory_bot_rails'
  gem 'rspec_junit_formatter'
end

group :production do
  gem 'rack-attack'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
