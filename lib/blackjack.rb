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
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card
  card_total += deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input 
  while input != "h" && input != "s" do
    invalid_command
    prompt_user
    input = get_user_input
  end
    if input == "h"
      card_total += deal_card
    elsif input == "s"
    end
    card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  count = 0
  welcome 
  card_total = initial_round
  if card_total < 21 && count < 2
       if hit?(card_total) == "s"
       hit?(card_total)
       count += 1
     end
  end
  display_card_total(card_total)   
end
    
