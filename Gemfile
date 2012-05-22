source "http://rubygems.org"
# group :development do
#   # gem "mysql"
#   # gem "json_pure", "1.4.3"
#
#
#   # gem "datamapper",        "1.0.0"
#   # gem "dm-migrations",     "1.0.0"
#   # gem "dm-sqlite-adapter", "1.0.0"
#
#   # mongo requirements
#     # gem "mongo",     "1.0.1"
#     # gem "mongo_ext", "0.19.3"
#     # gem "bson_ext",  "1.0.1"
# end

group :development do
  gem "rake", "0.9.2.2"
  gem "ruby-debug"

  gem "bundler"
  gem "jeweler"

  gem "json_pure"

  #ORM's
  gem "activerecord",         "3.1.4"  
  gem "datamapper",           "1.0.0"
  gem "dm-migrations",      "1.0.0"
  gem "dm-sqlite-adapter",  "1.0.0"
  gem "mongoid",              "2.4.10"
  gem "tzinfo",             "0.3.29"
  gem "mongo_mapper",         "0.11.1"
  gem "couch_potato",         "0.3.0"
  gem "sequel",               "~>3.21.0"

  gem 'cassandra', :git => 'git://github.com/nshb/cassandra.git', :require => 'cassandra/1.0'
  gem 'active_column', :git => 'git://github.com/nshb/active_column.git'
  gem 'bson_ext',              '1.0.9'

  #gem "ibm_db"  # I don't want to add this dependency, even as a dev one since it requires DB2 to be installed
end

group :test do
  gem "rspec", '1.3.0'
  gem "rspactor", "0.7.0.beta.6"
  gem "rcov", '0.9.8'
  gem "ZenTest"
end

group :cucumber do
  gem "cucumber"
  gem 'sqlite3-ruby'
end
