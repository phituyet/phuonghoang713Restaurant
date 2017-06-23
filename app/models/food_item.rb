class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :price, presence: true
  has_many :orders
  def image_url_or_default
    if image_url.present?
      image_url
    else
    #  puts "[hoanggpn] name food item  =  #{name} "
      "http://loremflickr.com/320/240/#{name.gsub(' ','+')}"
    end
  end
end
