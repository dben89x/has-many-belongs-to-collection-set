require 'rails_helper'

describe 'test for cats' do
  it 'should have a toy' do
    cat = Cat.create(
      name: 'Evil'
    )

    toy = Toy.create(
      name: 'pitchfork',
      cat_id: cat.id
    )

    expect(toy.cat.name).to eq('Evil')

  end
end
