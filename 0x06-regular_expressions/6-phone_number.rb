#!/usr/bin/env ruby

# Check if the command-line argument is provided
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <phone_number>"
  exit 1
end

# Extract the input phone number from the command-line argument
phone_number = ARGV[0]

# Use the Oniguruma regular expression to match a 10-digit phone number
match_result = phone_number.match(/^\d{10}$/)

# Check if there is a match and print the result
if match_result
  puts "#{match_result[0]}"
else
  puts ""
end
