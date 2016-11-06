class Event < ApplicationRecord
    belongs_to :organization
    has_many :coupons
    has_many :contributions
    has_many :teams
    has_many :attendees, through: :teams
    
    validates :name, presence: true
    validates :street, presence: true
    
    before_validation do 
        self.organization_id = 1
    end
    
    after_find do
       self.raised = Contribution.where(event_id: self.id).pluck(:amount).sum
    
    end
    
    def total_attendees
       self.teams.attendees.count 
    end
    
    def percent_remaining
        if self.raised.nil?
            0
        else
            (self.raised/self.goal) * 100  
        end
    end
end
