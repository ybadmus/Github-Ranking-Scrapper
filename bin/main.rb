#!/usr/bin/env ruby

require_relative '../lib/logic'

puts "\nWelcome, get the list of most active GitHub users in your country"
puts "Disclaimer: All information are obtained from the official website for GitHub rankings - 'https://commits.top'"
puts "Enjoy!"
puts ""

logic = Logic.new
puts "Countries"
print logic.list_of_countries
puts "\n\nSelect the country you want to view the list of most active GitHub users"

user_input_country = gets.chomp.strip
until logic.valid_country(user_input_country)
  puts 'Select a valid country name, please try again!'
  user_input_country = gets.chomp.strip
end

puts "\nMost active GitHub users in #{user_input_country}"


