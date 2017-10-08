class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = Array.new()
  end

  def win?
    @sequence_length == 5
  end

  def play
    commence_game
    until @game_over == true
      take_turn
    end
    if @game_over
      game_over_message
      reset_game
      puts 'Would you like to play again? (y/n)'
      input = gets.chomp
      self.play if input == 'y'
    end
  end

  def commence_game
    system('clear')
    puts 'Welcome to Simon!'
    puts "THE GAME IS STARTING IN 3..."
    sleep 1.00
    puts '2...'
    sleep 1.00
    puts '1...'
    sleep 1.00
    puts 'NOW!'
    sleep 1.00
  end

  def take_turn
    show_sequence
    require_sequence
    if !@game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    system("clear")
    puts "SEQUENCE:"
    add_random_color
    @seq.each do |i|
      system("clear")
      sleep 0.55
      puts i
      sleep 0.70
      system("clear")
      sleep 0.55
    end
  end

  def require_sequence
    puts 'Please enter sequence (rbgy):'
    guess = gets.chomp

    guess.split('').each_with_index do |letter, index|
      if (guess.length != @seq.length) || letter != @seq[index][0]
        @game_over = true
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts ""
    puts 'Correct!'
  end

  def game_over_message
    puts ""
    puts ""
    if win?
      p 'The game is over. You win.'
    else
      p 'Wrong answer. You lose the game.'
    end
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = Array.new
  end
end

game = Simon.new
game.play
