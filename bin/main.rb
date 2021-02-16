#!/usr/bin/env ruby

require_relative '../lib/logic'

puts "\nWelcome, get the list of most active github users in your country"
puts "Disclaimer: All information are obtained from the official website for github rankings - 'https://commits.top'"
puts "Enjoy!"
puts ""

logic = Logic.new
puts "Countries"
print logic.list_of_countries
puts "\n\nSelect the country you want to view the list of most active github users"

user_input_country = gets.chomp.strip
while !logic.valid_country(user_input_country)
  puts 'Select a valid country name, please try again!'
  user_input_country = gets.chomp.strip
end

logic.active_country = user_input_country

puts "To complete the search it\'s required to apply one of the filters below:"
puts "\n(1) All active users in #{user_input_country} \n(2) Active users in a range eg: (10 - 20) \n(3) Search by active user's name \n(4) Active organizations"
puts "\nPlease select the filter you want to apply (1, 2, or 4)"

user_input_filter = gets.chomp.strip.to_i
while !(1..4).include? user_input_filter
  puts "\nSelect a valid filter (1, 2, 3 or 4), please try again!"
  user_input_filter = gets.chomp.strip.to_i
end

case user_input_filter
  when 1
    puts "\nMost active GitHub users in #{user_input_country}"
    puts logic.get_all_active_users
  when 2
    puts "\nEnter the starting value of the range"
    puts "\nStarting value must not be greater than 256"
    start_range = gets.chomp.to_i
    while start_range == 0 || start_range > 256 
      puts "\nSelect a valid starting range, please try again!"
      start_range = gets.chomp.to_i
    end
    puts "\nEnter the ending value of the range"
    puts "\Ending value must not be greater than 256"
    puts "\Starting value must not be greater than ending value"
    end_range = gets.chomp.to_i
    while end_range == 0 || end_range > 256 || start_range > end_range
      puts "\nSelect a valid ending range, please try again!"
      end_range = gets.chomp
    end
    puts logic.get_active_users_in_range(start_range, end_range)
  when 3
    puts "\nEnter the username"
    username = gets.chomp
    puts logic.get_rank_by_username(username)
  when 4
    puts "\nMost active organizations #{user_input_country}"
    puts logic.get_organizations_ranking
  else
    puts "\nYou gave me #{user_input_filter} -- I have no idea what to do with that."
end




