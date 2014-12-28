require 'open-uri'

class Dog < ActiveRecord::Base
  validates_presence_of :name

  scope :rising_stars, -> { where created_at: 1.year.ago..Time.now }

  def older_than? other
    updated_at < other.updated_at
  end

  def related_photo
    tags = name.split(' ').join(',')
    api_url = "https://api.flickr.com/services/feeds/photos_public.gne?tags=#{tags}"
    doc = Nokogiri::XML(open(api_url))

    doc.at('entry').at('link').attributes['href'].value
  end
end
