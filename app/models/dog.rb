class Dog < ActiveRecord::Base
  validates_presence_of :name

  scope :rising_stars, -> { where created_at: 1.year.ago..Time.now }

  def older_than? other
    updated_at < other.updated_at
  end
end
