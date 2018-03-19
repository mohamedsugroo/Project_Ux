source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'mongoid', '~> 6.2.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
# gem 'therubyracer', platforms: :ruby
gem 'angularjs-rails', '~> 1.5', '>= 1.5.5'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'devise'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'bootstrap', '~> 4.0.0'
gem 'popper_js', '~> 1.12.9'
gem 'mongoid-paperclip'
gem 'mongoid_search'
gem 'mongoid-slug'
gem 'ckeditor'
gem 'meta-tags'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard-livereload', '~> 2.5', require: false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
