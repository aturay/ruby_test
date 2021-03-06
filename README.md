# КОММЕНТИРОВАНИЕ И ТЕСТИРОВАНИЕ GildedRose

## ЯЗЫК
Ruby - Красивый, искусный язык, и в то же время он удобный и практичный.
> Ruby прост на вид, но очень сложен внутри, подобно человеческому телу.

## КАЧЕСТВО КОДА
  Требуется рефакторинг:
  > Реолизация проверки типа принимаемых данных
  > Контроль возврата результатов
  > Перенес тестов в отдельную папку **test**
  ...

## ОПИСАНИЕ КЛАССОВ
__class GildedRose__ - обновляет __quality__ товара
+ Принимает: массив с экземпляроми класса __Item__
+ Свойства: нет
+ Метод(ы): __update_quality()__

__class Item__ - создает товар
+ Принимает: __naem (String), sell_in (Int), quality (Int)__
+ Свойства: __naem, sell_in, quality__
+ Метод(ы): __to_s()__ #=> String

## ПРИМЕР
###### Создаем массив __items__ с двумя продуктами __item1__, __item2__
    item1 = Item.new('Продукт1', 6, 25)
    item2 = Item.new('Продукт2', 7, 40)
    items = [item1, item2]

###### Создаем экземпляр класса GildedRose
    gilded_rose = GildedRose.new(items)

###### Для обновление качество всех товаров вызываем метод __update_quality()__
    gilded_rose.update_quality()

###### Проверка Unit и RSpec тестов
-----------------------------------
    ~/ruby_test/tests/models$ ruby gilded_rose_tests.rb
    ~/ruby_test/rspac$ rspec gilded_rose_spec.rb
