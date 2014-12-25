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

    # TODO: Refactor it when we touch on FactoryGirl
    it 'has a name' do
      dog = described_class.create name: 'Boo'
      expect(dog.name).to eq 'Boo'
    end

    it 'requires a name' do
      unnamed_dog = described_class.new

      expect(unnamed_dog.valid?).to eq false
      expect(unnamed_dog.errors).to include :name
    end
  end

  # 2. Logic
  describe '#older_than?' do
    let(:older_dog) { described_class.create name: 'Boo' }
    let(:younger_dog) { described_class.create name: 'Jiff' }

    it 'is older than the older dog' do
      expect(older_dog.older_than? younger_dog).to eq true
    end
  end

  # 3. Scopes
  describe '.rising_stars' do
    let!(:new_dog) { described_class.create name: 'Jiff' }
    let!(:old_dog) { described_class.create name: 'Boo' }
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
