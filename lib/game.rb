class Game
  attr_reader :p1_input
  def initialize(input = gets.chomp)
    @p1_input = input
    @cpu_input = ["rock", "paper", "scissors"].sample
  end

  def run_game
    case
    when @p1_input == "rock" && @cpu_input == "scissors"
        "You won!"
      when @p1_input == "rock" && @cpu_input == "paper"
        "You lost : ("
      when @p1_input == "scissors" && @cpu_input == "paper"
        "You won!"
      when @p1_input == "scissors" && @cpu_input == "rock"
        "You lost : ("
      when @p1_input == "paper" && @cpu_input == "scissors"
        "You lost : ("
      when @p1_input == "paper" && @cpu_input == "rock"
        "You won!"
      when @p1_input == @cpu_input
        "It's a draw"
    end
  end

end
