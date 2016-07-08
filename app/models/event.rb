class Event < ActiveRecord::Base
		belongs_to :card
		belongs_to :deal
		belongs_to :contact
		belongs_to :event_type
end
