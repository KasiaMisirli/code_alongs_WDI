require "fileutils" #must always request library

filename = gets.chomp

FileUtils.touch(filename)