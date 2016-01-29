require 'item_database'

RSpec.describe ItemDatabase do
  it do
    apple = Item.new('Apple', 100)
    banana = Item.new('Banana', 50)

    db = ItemDatabase.new
    db.add(apple)
    db.add(banana)

    expect(db.find('Apple')).to eq(apple)
  end
end
