class Customer

  attr_accessor :first_name, :last_name
  attr_reader :reviews

  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    ALL << self
  end

  def self.all
  	ALL
  end

  def self.find_by_name(name)
  	ALL.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(first_name)
  	ALL.find_all {|customer| customer.first_name == first_name}
  end

  def self.all_names
  	ALL.map {|customer| customer.full_name}
  end


  def full_name
    "#{first_name} #{last_name}"
  end

  def add_restaurant(content, restaurant)
  	review = Review.new(content, restaurant)
  	review.customer = self
  	self.reviews << review
  	restaurant.reviews << review
  end

end
