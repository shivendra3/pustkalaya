class Student < ApplicationRecord
	self.primary_key = 'sid'
	 validates_uniqueness_of :sid
	 has_many :issues
	has_many :totalbooks, :through => :issues
end
