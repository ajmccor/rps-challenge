puts "Player 1, please enter your move, you can choose rock, paper, or scissors"
p1_input = gets.chomp

puts "Player 2, please enter your move, you can choose rock, paper, or scissors"
p2_input = gets.chomp

case

  when p1_input == "rock" && p2_input == "scissors"
    puts "Player 1 wins"
  when p1_input == "rock" && p2_input == "paper"
    puts "Player 2 wins"
  when p1_input == "scissors" && p2_input == "paper"
    puts "Player 1 wins"
  when p1_input == "scissors" && p2_input == "rock"
    puts "Player 2 wins"
  when p1_input == "paper" && p2_input == "scissors"
    puts "Player 2 wins"
  when p1_input == "paper" && p2_input == "rock"
    puts "Player 1 wins"
  when p1_input == p2_input
    puts "It's a draw"

end
