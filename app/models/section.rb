class Section < ApplicationRecord
	has_many :food_items, dependent: :destroy

	def self.search(query)
    	# where(:title, query) -> This would return an exact match of the query
    	where("name ilike ?", "%#{query}%") 
  	end
  	def to_param
  	"#{name}"
	end
end
