#!/usr/bin/env ruby

started = false
finished = false
File.foreach(ARGV[0]).with_index do |line, line_num| 
  started = true and finished = false if line.match?('\[35mBEGIN')
  finished = true and started = false if line.match?('\[35mCOMMIT')
  raise "Unsafe job enqueued at line: #{line_num + 1}." if line.match?('\[ActiveJob\] Enqueued') && started
end
