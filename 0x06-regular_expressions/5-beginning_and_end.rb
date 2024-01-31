#!/usr/bin/env ruby
# Check if the command-line argument is provided
# shellcheck disable=SC2009

if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <input_string>"
  exit 1
end

# Extract the input string from the command-line argument
input_string = ARGV[0]

# Use the Oniguruma regular expression to match the specified pattern
match_result = input_string.match(/^h.n$/)

# Check if there is a match and print the result
if match_result
  puts match_result[0]
else
  puts ""
end
