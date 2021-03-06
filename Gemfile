source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use sqlite3 as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'bootstrap-sass'
gem 'devise'
gem 'simple_form'
gem 'font-awesome-rails'
gem 'carrierwave'
gem 'mini_magick'
gem 'letter_opener', group: :development

gem 'aasm'
# 商品位置调整
gem 'acts_as_list'

# 中文翻译
gem "rails-i18n"

# devise翻译
gem "devise-i18n"

# 搜索
gem 'ransack'
gem 'will_paginate'
gem 'will_paginate-bootstrap'

# 搜索高亮
gem 'seo_helper'

# model 流程图
gem 'rails-erd'

# 7牛
gem 'carrierwave-qiniu'
gem 'qiniu-rs'

# 机密信息管理
gem 'figaro'

# 产品端debug（heroku）
gem 'airbrake', '~> 5.4'

# 文本编辑器支持gem
gem 'bootstrap-wysihtml5-rails'

gem 'jquery-turbolinks'

# 客服系统
gem "intercom-rails"

# 详细地址
gem 'china_city'

# 社交分享
gem 'social-share-button'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
# debug
  gem 'byebug', platform: :mri
  gem 'pry'
# 升级版金手指
  gem 'awesome_rails_console'
  gem 'sqlite3'
end





group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  #gem 'spring'
  #gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
group :production do
  gem 'pg'
end
