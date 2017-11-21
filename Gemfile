source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'


gem 'sdoc', '~> 0.4.0', group: :doc
gem 'turbolinks', '~> 5'
#gem 'rails4-autocomplete'
gem 'jquery-turbolinks'
gem 'jquery-ui-rails', '5.0.5'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'sunspot_rails'
gem 'jquery-datatables-rails'
gem 'devise'
gem 'simple_form'
gem "font-awesome-rails"
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.2'
gem 'uglifier', '>= 1.3.0'
gem 'awesome_link'
gem 'will_paginate'
gem 'will_paginate-bootstrap'
gem 'bcrypt', '~> 3.1.7'

group :development, :test do
 gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'sunspot_solr'
  gem 'sqlite3'
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
