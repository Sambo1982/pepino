class Product < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 2, maximum: 30 }

	has_many :features
end
