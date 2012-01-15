# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides = [a, b, c]
  raise(TriangleError, "all sides must be greater than 0") if sides.any? { |side| side < 1 }
  raise(TriangleError, "invalid length of sides") unless sides.permutation(3).select{ |combo| combo[0] + combo[1] <= combo[2] }.empty? 
  [:equilateral, :isosceles, :scalene].fetch(sides.uniq.size - 1)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
