class Telefone < ActiveRecord::Base
belongs_to :card
belongs_to :face
validates :number, presence: true,
                    length: { minimum: 5 }
end
