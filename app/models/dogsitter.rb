class Dogsitter < ApplicationRecord
	#appartient ET possède plusieurs:
	has_and_belongs_to_many :dogs
	#appartient à un seul:
	belongs_to :city, optional: true
end
