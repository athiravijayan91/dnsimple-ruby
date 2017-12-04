class Register < ApplicationRecord
	belongs_to :domain
	validates_presence_of :domain_name, uniqueness: true
	def domain_name
    # or different logic/additional condition
    if Domain.exists?(domain_name: 'nuvi.com')
      errors.add("Client with this name exists.")
    end
  end


  end
	
end
