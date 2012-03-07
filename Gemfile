# Copyright (c) 2010 by Robert D. Cotey II
#    This file is part of coteyr_pack.
#
#    coteyr_pack is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    coteyr_pack is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with coteyr_pack.  If not, see <http://www.gnu.org/licenses/>.

gem 'capistrano'
gem 'capistrano-ext'
gem 'rmagick', :require => 'RMagick'
gem 'aws-s3', :require => 'aws/s3'
gem 'rcov', :require=>false
gem 'sass'
gem "jquery-rails"
gem 'coteyr_pack', :git=>"git@git.coteyr.net:coteyr_pack.git"

source 'http://rubygems.org'
gem 'rails', '3.1.3'

group :development do
  gem 'sqlite3-ruby', :require => 'sqlite3'
  gem 'autotest'
  gem 'autotest-growl'
  gem 'redgreen'
  gem 'autotest-fsevent'
  gem 'metrical'
end

group :production, :staging do
  gem 'mysql'
  gem 'uglifier'
  gem 'execjs'
  gem 'therubyracer'
end
