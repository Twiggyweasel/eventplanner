class Contribution < ApplicationRecord
    belongs_to :event
    validates :amount, presence: true 
    
    before_save do
       self.paid = true 
    end
end