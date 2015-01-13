require_relative'prime_model'
require_relative'prime_view'

x = ARGV[0]
y = ARGV[1]

new_matrix = Prime.new(columns: x, rows: y)
new_matrix.find_primes
new_matrix.set_top_row
new_matrix.set_first_column
new_matrix.fill_in_grid
show = View.new(new_matrix.matrix)
show.space
show.print_screen





