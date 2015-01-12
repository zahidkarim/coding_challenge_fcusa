require_relative'prime_model'
require_relative'prime_view'

x = ARGV[0]
y = ARGV[1]

new_matrix = Prime.new(columns: x, rows: y)

new_matrix.create_grid_array




