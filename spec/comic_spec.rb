require 'spec_helper'

describe Comic do

  it { should validate_presence_of :name }
  it { should have_and_belong_to_many :characters }

  it 'should downcase and capitalize names' do
    expect(Comic.create({name: 'hulk'}).name).to eq 'Hulk'
  end
end
