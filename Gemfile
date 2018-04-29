source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'sqlite3'

gem 'sdoc', '~> 0.4.0', group: :doc
gem 'turbolinks', '~> 5'

gem 'jquery-turbolinks'

gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'sunspot_rails'
gem 'devise'
gem 'simple_form'
gem "font-awesome-rails"
gem 'awesome_link'
gem 'will_paginate'
gem 'will_paginate-bootstrap'
gem 'bcrypt', '~> 3.1.7'
gem 'maskedinput-rails'
gem 'bootstrap-datepicker-rails'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'rails_admin', '~> 1.2'
gem 'kaminari'
gem 'bootstrap'

group :assets do
  gem 'jquery-ui-rails', '5.0.5'
	gem 'coffee-rails', '~> 4.2'
	gem 'uglifier', '>= 1.3.0'
	gem 'sass-rails', '~> 5.0'
	
end




group :development, :test do
 gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group  :production do
 
end

group :development,:test do
  
  gem 'sunspot_solr'
  gem 'web-console', '>= 3.3.0'
  gem 'spring'


end



gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
