class Setting < ApplicationRecord
	validates_presence_of :input,presence: { message: "Please enter the Domain name" }
end
