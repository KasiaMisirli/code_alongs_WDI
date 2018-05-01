require "fileutils"
require 'pry'
=begin
hackers
|
|--mary
    |--README.md
|--jo
    |--README.md
|--lisa
    |--README.md
=end

#you will need methods from FileUtils

hackers = ["Mary","Jo","Lisa"]

hackers.each do |hacker|
    FileUtils.mkdir(hacker.downcase)
    FileUtils.cd(hacker) do
    FileUtils.touch("README.md")
    FileUtils.cd("../.")
   
end





#making directory FileUtil.mkdir(some_dir_name)
#making a file FileUtil.touch(some_file_name)
#str to lowercase   str.downcase
#change directory FileUtil.cd()