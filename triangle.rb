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
  if a == 0 or b == 0 or c == 0
    raise TriangleError, "Zero is not a proper length."
  elsif a < 0 or b < 0 or c < 0
    raise TriangleError, "Cannot use negatives"
  elsif a + b <= c or a + c <= b or b + c <= a
    raise TriangleError, "Sides not long enough. The addition of any two sides of triangle must be greater than the third side"
  end

  if a == b && a == c
    :equilateral
  elsif (a == b) or (a == c) or (b == c)
    :isosceles
  elsif (a != b) or (a != c) or (b != c)
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
