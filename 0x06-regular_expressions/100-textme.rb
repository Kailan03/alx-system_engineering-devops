#!/usr/bin/env ruby

# Check if the command-line argument is provided
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <input_string>"
  exit 1
end

# Extract the input string from the command-line argument
input_string = ARGV[0]

# Use the Oniguruma regular expression to match and extract named groups
match_result = input_string.match(/\[from:(?<sender>.*?)\]\[to:(?<receiver>.*?)\]\[flags:(?<flags>.*?)\]/)

# Check if there is a match and print the result
if match_result
  sender = match_result['sender']
  receiver = match_result['receiver']
  flags = match_result['flags']

  # Output the extracted information
  puts "#{sender},#{receiver},#{flags}"
else
  puts "No match found."
end
