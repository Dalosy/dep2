class Face < ActiveRecord::Base
	has_many :telefones
	belongs_to :card
end
