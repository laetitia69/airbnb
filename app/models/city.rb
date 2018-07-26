class City < ApplicationRecord
	#possède plusieurs :
	has_many :dogsitters
	has_many :dogs
end
