class Board
  attr_reader :grid

  ROWS = 6
  COLUMNS = 7

  def initialize
    @grid = Array.new(ROWS) { Array.new(COLUMNS, nil) }
  end

  def place_piece(column, symbol)
    raise 'Column out of bounds' if column < 0 || column >= COLUMNS
    row = lowest_empty_row(column)
    raise 'Column if full' if row.nil?
    grid[row][column] = symbol
    row
  end

  def full?
    grid.flatten.none?(&:nil?)
  end

  def winning_move?(symbol)
    horizontal_win?(symbol) || vertical_win?(symbol) || diagonal_win?(symbol)
  end

  def display
    puts grid.map { |row| row.map { |cell| cell || '.' }.join(' ') }
    puts (0...COLUMNS).to_a.join('')
  end

  private

  def lowest_empty_row(column)
    (ROWS - 1).downto(0).find { |row| grid[row][column].nil? }
  end

  def horizontal_win?(symbol)
    grid.any? do |row|
      row.each_cons(4).any? { |group| group.all?(symbol) }  
    end
  end

  def vertical_win?(symbol)
    grid.transpose.any? do |col|
      col.each_cons(4).any? { |group| group.all?(symbol) }
    end
  end

  def diagonal_win?(symbol)
    diagonals.any? do |diag|
      diag.each_cons(4).any? { |group| group.all?(symbol) }
    end
  end

  def diagonals
    diags = []
    (0..ROWS - 4).each do |r|
      (0..COLUMNS - 4).each do |c|
        diags << (0..3).map { |i| grid[r + i][c + i] }
      end
    end
    (3..ROWS - 1).each do |r|
      (0..COLUMNS - 4).each do |c|
        diags << (0..3).map { |i| grid[r + i][c + i]}
      end
    end
    diags
  end
end