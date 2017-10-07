class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = Array.new()
  end

  def play
    until @game_over == true
      take_turn
    end
    if @game_over
      game_over_message
      reset_game
      self.play
    end
  end

  def take_turn
    show_sequence
    require_sequence
    if !game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    puts ""
    puts ""
    add_random_color
    p @seq
  end

  def require_sequence
    puts 'Please enter sequence (rbgy):'
    guess = gets.chomp

    guess.split('').each_with_index do |letter, index|
      if letter != @seq[index][0]|| (guess.length != @seq.length)
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
    p 'The game is over'
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = Array.new
  end
end

game = Simon.new
game.play
