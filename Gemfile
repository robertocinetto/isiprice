source 'https://rubygems.org'

ruby '2.1.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use mysql as the database for Active Record
gem 'mysql2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
gem 'compass-rails'
gem 'compass-colors'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'haml-rails'

# you need to run "find . -name \*.erb -print | sed 'p;s/.erb$/.haml/' | xargs -n2 html2haml"
gem 'html2haml'

gem 'bootstrap-sass', '~> 3.2.0'
# copy this line to application.css and application.js
# @import "bootstrap-sprockets";
# @import "bootstrap";
# //= require bootstrap-sprockets
gem 'bootstrap_form'
gem "font-awesome-rails"

gem 'autoprefixer-rails'
gem 'devise', '~> 3.2.0'

gem 'rmagick', :require => 'RMagick'
gem 'carrierwave'

# you need to run "rails generate active_admin:install" and migrate
gem 'activeadmin', github: 'gregbell/active_admin'

gem 'sprig'
gem 'sprig-reap'

group :development do
	gem 'guard'

	#y ou need to run "guard init livereload"
	gem 'guard-livereload', require: false

	gem 'better_errors'
	gem 'binding_of_caller'
	gem 'meta_request'
	gem 'seed_dump'
end

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

group :production do
	gem 'pg', '0.15.1'
	gem 'rails_12factor', '0.0.2'
end
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'geocoder'
