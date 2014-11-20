require 'rails_helper'

describe 'tests for toys' do
  it 'should belong to cats' do
    cat = Cat.create(
      name: 'Evil'
    )

    toy1 = Toy.create(
      name: 'pitchfork',
      cat_id: cat.id
    )

    expect(cat.toys.first.name).to eq('pitchfork')
  end
end
