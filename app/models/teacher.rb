class Teacher < ApplicationRecord

	belongs_to :classroom, { :optional => false }
	
end
