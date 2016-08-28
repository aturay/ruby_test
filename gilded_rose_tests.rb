require File.join(File.dirname(__FILE__), 'gilded_rose')
require 'test/unit'

# Тест на правильность работы класса GildedRose
class TestUntitled < Test::Unit::TestCase

  def test_foo
    items = [Item.new("foo", 0, 0)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].name, "foo"
    assert_equal items[0].quality, 0
  end

  def test_ananas
    items = [Item.new("ananas", 12, 6)]
    GildedRose.new(items).update_quality()

    msg = '"quality" у "ananas" должен снизится 1 рас'
    assert_equal items[0].name, "ananas"
    assert_equal items[0].quality, 5, msg
  end
end
