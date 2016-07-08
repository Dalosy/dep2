class Contact < ActiveRecord::Base
	has_many :dc_links
	belongs_to :card
	has_many :events	
end
