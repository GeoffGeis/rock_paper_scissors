class RPS
  def input
    puts "*Welcome to Rock Paper Scissors!"
    puts "*Best out of 3!"
    puts "choose 'rock' 'paper' or 'scissor'"
    user_choice = gets.chomp
    while user_choice != 'rock' && user_choice != 'paper' && user_choice != 'scissor'
      puts "please enter a valid choice of 'rock' 'paper' or 'scissor'"
      user_choice = gets.chomp
    end
    puts ""
    user_choice
  end

  def ai_input
    ["rock", "paper", "scissor"].sample
  end

  def conditional
    @tally = 0
    @defeat = { rock: 'scissor', paper: 'rock', scissor: 'paper' }
    3.times do
      ai_move = ai_input
      player_move = input
      if player_move == ai_move
        puts "Tied with computer. Try again!"
        puts ""
      elsif ai_move == @defeat[player_move.to_sym]
        win
        @tally += 1
      else
        lose
        @tally -= 1
      end
    end  
  end

  def win
    puts "YOU HAVE WON"
    puts ""
  end
  
  def lose
    puts "YOU HAVE LOST"
    puts ""
  end

  def totall
    if @tally >= 1 
      puts "YOU WIN BEST OF 3"
    else
      puts "YOU LOSE OF 3"
    end
  end
end

r = RPS.new
r.conditional
r.totall
