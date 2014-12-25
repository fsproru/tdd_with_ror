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

  # Here is what you usually test on a model:
  #
  # 1. Validations
  describe 'validations' do
    let(:unnamed_dog) { build :unnamed_dog }
    let(:dog)         { build :dog }

    it 'has a name' do
      expect(dog.name).to_not be_nil
    end

    it 'requires a name' do
      expect(unnamed_dog.valid?).to eq false
      expect(unnamed_dog.errors).to include :name
    end
  end

  # 2. Logic
  describe '#older_than?' do
    let(:older_dog)   { create :dog }
    let(:younger_dog) { create :dog }

    it 'is older than the older dog' do
      expect(older_dog.older_than? younger_dog).to eq true
    end
  end

  # 3. Scopes
  describe '.rising_stars' do
    let!(:new_dog) { create :dog }
    let!(:old_dog) { create :dog }
    let(:rising_stars) { described_class.rising_stars }

    before do
      old_dog.update_attributes(created_at: 2.years.ago)
    end

    it 'returns only one rising star' do
      expect(rising_stars.count).to eq 1
    end

    it 'returns the newer dog' do
      expect(rising_stars.first).to eq new_dog
    end
  end
end
