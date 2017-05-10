class Totalbook < ApplicationRecord
	belongs_to :book,:foreign_key => "isbn"
    #has_one :issue
	#has_one :student, :through => :issue
end
