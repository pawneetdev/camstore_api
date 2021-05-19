source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

gem 'rails', '~> 6.0.1'
gem 'puma', '~> 4.3'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'active_model_serializers'
gem 'rack-cors'
gem 'devise'
gem 'simple_token_authentication'

group :development, :test do
	gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
	gem 'sqlite3'
	gem 'listen', '>= 3.0.5', '< 3.2'
	gem 'spring'
	gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
	gem 'pg', '>= 0.18', '< 2.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
