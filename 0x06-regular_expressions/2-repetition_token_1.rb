#!/usr/bin/env ruby
# check if the command-line argument is provided
# shellcheck disable=SC2009

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <input_string>"
  exit 1
end

# Extract the input string from the command-line argument
input_string = ARGV[0]

# Use the Oniguruma regular expression to match "School"
match_result = input_string.scan(/Scho\.l/i)  # 'i' makes the match case-insensitive

# Check if there is a match and print the result
if match_result.length > 0
  puts "#{match_result.join}"
else
  puts ""
end
