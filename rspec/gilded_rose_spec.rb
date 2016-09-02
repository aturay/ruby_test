require File.join(File.dirname(__FILE__), '../lib/.rspec-master/lib/rspec.rb')
require File.join(File.dirname(__FILE__), '../lib/gilded_rose')

# RSpec тест на правильность работы класса GildedRose
describe GildedRose do
  describe "change name" do
    it '#is_name?' do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()

      expect(items[0].name).to eq "foo"
    end
  end

  describe "#quality?" do
    it "quality is not change" do
      items = [Item.new("ananas", 12, 6)]
      GildedRose.new(items).update_quality()

      expect(items[0].quality).to eq 5
    end
  end
end
