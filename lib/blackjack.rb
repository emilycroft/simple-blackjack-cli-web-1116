def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.strip
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  a = deal_card
  b = deal_card
  card_total = a + b
  display_card_total(card_total)
  return card_total
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == "h"
    x = deal_card
    number += x
  elsif input != "h" && input != "s"
    invalid_command
  end
  return number
end

def invalid_command(card_total)
  puts "Please enter a valid command"
  prompt_user
  return card_total
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total <= 21
    card_total = hit?(card_total)

    display_card_total(card_total)
  end
  end_game(card_total)
end
