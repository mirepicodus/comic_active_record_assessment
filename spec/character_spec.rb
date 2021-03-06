require 'spec_helper'

describe Character do

  it { should validate_presence_of :name }
  it { should have_and_belong_to_many :comics }
  it { should belong_to :power}

  it 'should downcase and capitalize names' do
    expect(Character.create({name: 'hulk'}).name).to eq 'Hulk'
  end
end
