class Domain < ApplicationRecord
	has_many :domain_records
	has_many :registers
	validates_presence_of :domain_name 

end
