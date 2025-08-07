require_relative 'board'
require_relative 'player'

class Game
  def initialize
    @board = Board.new
    @player = create_players
    @current_players_idx = 0
  end

  def play
    loop do
      @board.display
      current_player = @player[@current_players_idx]
      puts "#{current_player.name}'s turn (#{current_player.symbol})"
      column = ask_column
      begin
        @board.place_piece(column, current_player.symbol)
      rescue => e
        puts e.message
        retry
      end

      if @board.winning_move?(current_player.symbol)
        @board.display
        puts "#{current_player.name} wins!"
        break
      elsif @board.full?
        @board.display
        puts "It's a draw."
        break
      end
      switch_turn
    end
  end

  private

  def create_players
    print 'Enter name for player 1: '
    name1 = gets.chomp
    print 'Enter name for plater 2: '
    name2 = gets.chomp
    [Player.new(name1, '●'), Player.new(name2, '○')]
  end

  def switch_turn
    @current_players_idx = 1 - @current_players_idx
  end

  def ask_column
    print "Enter column (1 - 6): "
    gets.to_i
  end
end