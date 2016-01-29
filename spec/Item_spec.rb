require 'Item'

RSpec.describe(Item) do
  it do
    item = Item.new("Apple" , 300)
    expect(item.name).to eq("Apple")
    expect(item.price).to eq(300)
  end
end
