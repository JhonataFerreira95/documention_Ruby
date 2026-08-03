require "minitest/autorun"

def sum(a, b)
  a + b
end

class TestingMathematics < Minitest::Test
    def test_sum_method
      assert_equal(5, sum(3, 2))
    end

    def test_sum_method_again
      assert_equal(7, sum(4, 2))
    end
end