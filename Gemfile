source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.6.5"

gem "config"

gem "rails", "~> 5.2.4", ">= 5.2.4.1"

gem "sqlite3"

gem "puma", "~> 3.11"

gem "sass-rails", "~> 5.0"

gem "uglifier", ">= 1.3.0"

gem "coffee-rails", "~> 4.2"

gem "turbolinks", "~> 5"

gem "jbuilder", "~> 2.5"

gem "bootsnap", ">= 1.1.0", require: false

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "web-console", ">= 3.3.0"

  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"

  gem "chromedriver-helper"
end
group :development, :test do
  gem "rubocop", "~> 0.74.0", require: false
  gem "rubocop-rails", "~> 2.3.2", require: false
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
