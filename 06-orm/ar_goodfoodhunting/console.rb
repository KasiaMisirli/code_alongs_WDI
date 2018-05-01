#this is for testing my db
require 'pry'
require 'active_record'
ActiveRecord::Base.logger = Logger.new(STDERR) #log sql for me
require_relative 'db_config'
require_relative 'models/dish' #looking for the class file
require_relative 'models/comment'
require_relative 'models/user'
require_relative 'models/like'


binding.pry