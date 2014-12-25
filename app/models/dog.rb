class Dog < ActiveRecord::Base
  validates_presence_of :name

  def older_than? other
    updated_at < other.updated_at
  end
end
