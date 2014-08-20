require 'spec_helper'

describe Power do

  it { should validate_presence_of :name }
  it { should have_many :characters}

  it 'should downcase and capitalize names' do
    expect(Character.create({name: 'strength'}).name).to eq 'Strength'
  end
end
