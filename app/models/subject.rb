class Subject < ActiveRecord::Base
	# has_one :page
	has_many :pages

	scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}
end
