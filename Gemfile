source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
#Repository for collecting Locale data for Ruby on Rails I18n as well as other interesting, Rails related I18n stuff http://rails-i18n.org
gem 'rails-i18n'
#Manage Procfile-based applications
gem 'foreman'
#Flexible authentication solution for Rails with Warden.
gem 'devise'
# Translations for the devise gem
gem 'devise-i18n'
# Rails gem of the Bootstrap based admin theme SB Admin 2.
gem 'bootstrap_sb_admin_base_v2'
# The safe Markdown parser, reloaded.
gem 'redcarpet'

source 'https://rails-assets.org' do
  # Bootstrap
  gem 'rails-assets-bootstrap', '3.3.7'
  # Bootstrap Notify
  gem 'rails-assets-bootstrap.growl'
  # BootboxJS
  gem 'rails-assets-bootbox'
  # Animate CSS
  gem 'rails-assets-animate-css'
  # Bootstrap Mardown
  gem 'rails-assets-bootstrap-markdown'
  # Marked
  gem 'rails-assets-marked'
end

#Minimal authorization through OO design and pure Ruby classes
gem 'pundit'
#Help ActiveRecord::Enum feature to work fine with I18n and simple_form.
gem 'enum_help'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
#Easy file attachment management for ActiveRecord
gem 'paperclip', '~> 6.0.0'
#Integration of RubyMoney - Money with Rails
gem 'money-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
#jQuery UI for the Rails asset pipeline
gem 'jquery-ui-rails'
#FriendlyId is the “Swiss Army bulldozer” of slugging and permalink plugins for ActiveRecord.
gem 'friendly_id', '~> 5.2.4' # Note: You MUST use 5.0.0 or greater for Rails 4.0+

# If Turbolinks are not enough for you. Wiselinks makes your application work faster.
gem 'wiselinks'
#A Ruby Gem that wraps the functionality of jQuery Raty library, and provides optional IMDB style rating.
gem 'ratyrate'

gem 'kaminari'
gem 'kaminari-i18n'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  #Better error page for Rack apps
  gem "better_errors"
  gem "binding_of_caller"
  #A library for generating fake data such as names, addresses, and phone numbers.
  gem 'faker'
  # O Lero-lero Generator é uma ferramenta capaz de gerar frases que 'falam' muita coisa mas que não tem conteúdo algum.
  gem 'lerolero_generator'
  # Mailcatcher
  gem 'mailcatcher'
  #Markdown Lorem Ipsum generator
  gem 'doctor_ipsum'

  # Use Capistrano for deployment
  # gem 'capistrano-rails', group: :development

  gem 'capistrano', '~> 3.7'
  gem 'capistrano-bundler', '~> 1.2'
  gem 'capistrano-rails', '~> 1.2'
  #RVM Suport for Capistrano v3
  gem 'capistrano-rvm'
  gem 'capistrano3-unicorn'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  #Generate Entity-Relationship Diagrams for Rails applications
  gem 'rails-erd'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'mysql2'

  # Use Unicorn as the app server
  gem 'unicorn'
end

