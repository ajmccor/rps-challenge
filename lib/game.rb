puts "Please enter your move, you can choose rock, paper, or scissors"
p1_input = gets.chomp

cpu_input = ["rock", "paper", "scissors"].sample

case

when p1_input == "rock" && cpu_input == "scissors"
    puts "Player 1 wins"
  when p1_input == "rock" && cpu_input == "paper"
    puts "Player 2 wins"
  when p1_input == "scissors" && cpu_input == "paper"
    puts "Player 1 wins"
  when p1_input == "scissors" && cpu_input == "rock"
    puts "Player 2 wins"
  when p1_input == "paper" && cpu_input == "scissors"
    puts "Player 2 wins"
  when p1_input == "paper" && cpu_input == "rock"
    puts "Player 1 wins"
  when p1_input == cpu_input
    puts "It's a draw"

end
