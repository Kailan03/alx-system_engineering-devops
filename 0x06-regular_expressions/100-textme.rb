#!/usr/bin/env ruby

def extract_information(text)
  # Define a regular expression pattern using Oniguruma syntax
  pattern = Oniguruma.new('(?<sender>[\w\s\+\(\)-]+),(?<receiver>[\w\s\+\(\)-]+),(?<flags>[\w,]+)')

  # Use Oniguruma to match the pattern in the given text
  match = pattern.match(text)

  if match
    # Extract information from the named captures
    sender = match['sender']
    receiver = match['receiver']
    flags = match['flags']

    # Output the extracted information
    puts "Sender: #{sender}"
    puts "Receiver: #{receiver}"
    puts "Flags: #{flags}"
  else
    puts ""
  end
end
