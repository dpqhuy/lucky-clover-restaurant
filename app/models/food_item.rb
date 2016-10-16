class FoodItem < ApplicationRecord
  belongs_to :section
  has_many :order_items

  def self.search(query)
    where("name ilike ?", "%#{query}%") 
  end

end
