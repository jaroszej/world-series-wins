# Jason Jaroszewicz
# 06 April 2018
# CIS 116
# Professor Beth Paver
# Assignment 11 Problem 1
# This program will use data within files to display a list of Major League baseball World Series
# winners and tell the user how many times a given team has won the World Series over its history.

=begin
Step 1: Create user interface menu
Step 2: Get user input
Step 3: if option 1-
             open team list file
        if option 2-
             let user input team and show count of times team appears in team list
        if option 3-
             exit
Step 4: allow to restart or quit program
=end

input = ()
puts "Enter '1' to start program"
input = gets.to_i
while (input == 1) do

puts "Select an option..."
puts "1. Show Major League winners"
puts "2. Show number of wins for a team"
puts "3. Exit"

clear = ()
while clear == (nil) do
user_input = gets.chomp

if user_input.count("1") >= 1 # gets teams.txt file
  puts "The following teams have won the World Series: \n"
  File.open("teams.txt") do |file|
  while line = file.gets
    puts line
    puts " "
  end
  end
  puts "Select an option..."
  puts "1. Show Major League winners"
  puts "2. Show number of wins for a team"
  puts "3. Exit"

elsif user_input.count("2") >= 1 # querey user which team to show wins, show wins
  win_amount = 0
  puts "Which team? Please type the full name"
  team_select = gets.chomp.to_s.downcase
  if team_select == "chicago"
    puts "Chicago Cubs or Chicago White Sox?"
    team_select = gets.chomp.to_s.downcase
  end
  if team_select == "boston"
    puts "Boston Americans or Red Sox?"
    team_select = gets.chomp.to_s.downcase
  end
  if team_select == "sox"
    puts "Boston Red Sox or Chicago White Sox?"
    team_select = gets.chomp.to_s.downcase
  end
  if team_select == "new york"
    puts "New York Mets or New York Yankees or New York Giants?"
    team_select = gets.chomp.to_s.downcase
  end
  if team_select == "dodgers"
    puts "Los Angeles Dodgers or Brooklyn Dodgers?"
    team_select = gets.chomp.to_s.downcase
  end
  if team_select == "athletics"
    puts "Oakland Athletics or Philadelphia Athletics?"
    team_select = gets.chomp.to_s.downcase
  end

  r = /\b#{team_select}\b/i
  winners = File.read("winners.txt").scan(r).count
  win_amount += winners


    puts "#{team_select} have won #{win_amount} time(s)!"
    puts "\n Select an option... "
    puts "1. Show Major League winners"
    puts "2. Show number of wins for a team"
    puts "3. Exit"

elsif user_input.count("123") < 1
puts "Enter '1', '2', or '3' to select an option"
puts "1. Show Major League winners"
puts "2. Show number of wins for a team"
puts "3. Exit"
else
  clear = 1
end
end
puts "Enter '1' to restart or '0' to quit program."
input = gets.to_i
end
