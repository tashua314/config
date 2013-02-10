#!/cygdrive/c/Ruby193/bin/ruby
# -*- coding: utf-8 -*-

require 'fileutils'


syncFiles = [".vimrc", ".bashrc", ".bash_profile", ".vim"]

begin
  puts "copy start."
  syncFiles.each do |f|
    if FileTest.exist?("../#{f}")
      puts FileUtils.copy_entry("../#{f}", f)
      puts "#{f}をコピー。"
    end
  end
rescue => e
  puts e.class, e.message, e.backtrace
end

puts "copy end."
