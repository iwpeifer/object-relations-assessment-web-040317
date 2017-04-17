class Restaurant
  attr_accessor :name
  attr_reader :reviews

  ALL = []

  def initialize(name)
    @name = name
    @reviews = []
    ALL << self
  end

  def self.all
  	ALL
  end

  def self.find_by_name(name)
  	ALL.find{|restaurant| restaurant.name == name}
  end

  def customers
  	self.reviews.map{|review| review.customer}
  end

end
