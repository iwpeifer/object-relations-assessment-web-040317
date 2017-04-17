class Review

	attr_accessor :customer, :restaurant, :content

	ALL = []

	def initialize(content, restaurant)
		@content = content
		@restaurant = restaurant
		ALL << self
	end

	def self.all
		ALL
	end
  
end

