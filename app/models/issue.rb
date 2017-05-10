class Issue < ApplicationRecord
	belongs_to :student ,:foreign_key => "sid"
	belongs_to :totalbook
	#validates_uniqueness_of :totalbook
end
