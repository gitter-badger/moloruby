require 'minitest/autorun'
require 'moloruby'

class MolorubyTest < Minitest::Test
  def test_get_words
    number = 1 + rand(6)

    assert_equal "Array",
      Moloruby.get_words(number).class.name
  end

  def test_get_sentences
    number = 1 + rand(6)

    assert_equal "Array",
      Moloruby.get_sentences(number).class.name
  end

  def test_get_paragraphs
    number = 1 + rand(6)

    assert_equal "Array",
      Moloruby.get_paragraphs(number).class.name
  end
end

