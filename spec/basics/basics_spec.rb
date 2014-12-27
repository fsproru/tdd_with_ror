# 1. require 'spec_helper'
#   - Start with requiring spec_helper.rb (unless it's already required in .rspec)
#   - spec_helper.rb is located under the spec directory
#   - spec_helper.rb has all rspec configuration
require 'spec_helper'

# 2. Describe what you test
#   - Use the describe method to tell RSpec what you're about to test
#   - It's can be a name of the class or a phrase describing what you test
describe 'Basics' do

  # 3. Write a test
  #   - Use the method it followed by the plain english explanation of what's the behavior is
  it 'makes sure that true equals true' do
    target = true

    # 4. Expect
    #   - Wrap the target into expect().to
    #   - Use the equal matcher to compare the target with the expected value
    expect(target).to equal(true)
  end

  # 5. Failing test goes green
  it 'is equal to 5' do
    expect(5).to eq(5)
  end

  # 6. Set a negative expectation with expect(something).to_not syntax
  it 'is not equal to 5' do
    expect(3).to_not eq(5)
  end

  it 'is more than 5' do
    expect(10).to be > 5
  end

  it 'matches a regular expression' do
    expect('seafood').to match(/sea/)
  end

  # RSpec has a ton of matchers.
  # Check them out using the link below
  # http://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
end
