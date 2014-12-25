# You might need to require 'spec_helper' if you use older version of rspec
# rails_helper and spec_helper used to be one file
require 'rails_helper'

# Let's do some TDD
# Red -> Green -> Refactor

# 1. Write a failing test

# Notice that we use the Dog class here instead of a string
# This is allows us to use the special rspec variable called described_class
# It we use that pattern, we can easily change the class only in one place instead changing it in many places
describe Dog do
  it 'has a name' do
    dog = described_class.create name: 'Boo'
    expect(dog.name).to eq 'Boo'
  end

  it 'requires a name' do
    unnamed_dog = described_class.new

    expect(unnamed_dog.valid?).to eq(false)
    expect(unnamed_dog.errors).to include(:name)
  end
end