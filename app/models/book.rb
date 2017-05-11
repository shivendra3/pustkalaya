class Book < ApplicationRecord
	 searchkick
	 self.primary_key = 'isbn'
	 validates_uniqueness_of :isbn
end
