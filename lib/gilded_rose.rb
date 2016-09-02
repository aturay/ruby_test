# Класс <ТТ>GildedRose<ТТ>.
# Обновляет качество товара
# +items+ #=> Array [Item.new [, Item.new, ...]]
class GildedRose

  def initialize(items)
    @items = items.to_a
  end

  # Метод <tt>update_quality()<tt> обновляет
  # качество(+quality+) товара
  # #=> Int || nil
  def update_quality()
    return nil unless @items.any?

    @items.each do |item|
      case item.name
      when 'Aged Brie'
        if item.sell_in.to_i > 0
          quality = item.quality.to_i + 1
        else
          quality = item.quality.to_i + 2
        end

        item.quality = quality if quality <= 50

        item.sell_in = item.sell_in.to_i - 1
      when 'Sulfuras, Hand of Ragnaros'
        # nothing
      when 'Backstage passes to a TAFKAL80ETC concert'
        quality = if item.sell_in.to_i > 10
                    item.quality.to_i + 1
                  elsif item.sell_in.to_i > 5
                    item.quality.to_i + 2
                  elsif item.sell_in.to_i > 0
                    item.quality.to_i + 3
                  else
                    0
                  end

        item.quality = quality if quality <= 50
        item.quality = 50 if quality > 50

        item.sell_in = item.sell_in.to_i - 1
      when 'Conjured Mana Cake'
        quality = item.quality.to_i - 2
        item.quality = quality if quality >= 0
        item.sell_in = item.sell_in.to_i - 1
      else
        if item.sell_in.to_i > 0
          quality = item.quality.to_i - 1
        else
          quality = item.quality.to_i - 2
        end

        item.quality = quality if quality >= 0

        item.sell_in = item.sell_in.to_i - 1
      end # case
    end # each
  end # update_quality
end


# [R]
# Класс <ТТ>Item<TT> забронирован автором
# Изменению не принадлежит
# +name+    #=> String 'Гранат'
# +sell_in+ #=> Int     6
# +quality+ #=> Int     37
class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  # Метод <tt>to_s()<tt> зоздает список атрибутов
  # #=> String 'Гранат, 6, 37'
  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
