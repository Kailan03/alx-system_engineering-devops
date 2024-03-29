#!/usr/bin/env ruby

# Check if the command-line argument is provided
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <input_string>"
  exit 1
end

# Extract the input string from the command-line argument
input_string = ARGV[0]

# Use the Oniguruma regular expression to match capital letters
match_result = input_string.scan(/[A-Z]/)

# Check if there is a match and print the result
if match_result.any?
  puts "#{match_result.join}"
else
  puts ""
end
