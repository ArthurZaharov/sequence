require "minitest/autorun"
require "./sequence"

class SequenceTest < Minitest::Test
  def test_initial_sequence
    sequence = Sequence.new
    assert sequence.output == "1"
  end

  def test_short_sequence
    sequence = Sequence.new(iterations: 5)
    assert sequence.output == "312211"
  end

  def test_normal_sequence
    sequence = Sequence.new(iterations: 10)
    assert sequence.output == "11131221133112132113212221"
  end

  def test_long_sequence
    sequence = Sequence.new(iterations: 13)
    assert sequence.output == "11131221131211131231121113112221121321132132211331222113112211"
  end
end
