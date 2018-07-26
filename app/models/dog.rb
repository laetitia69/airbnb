class Dog < ApplicationRecord
	#appartient ET possède plusieurs:
	has_and_belongs_to_many :dogsitters
	#appartient à un seul:
	belongs_to :city, optional: true
end
