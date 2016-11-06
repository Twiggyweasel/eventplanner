class Team < ApplicationRecord
    belongs_to :event
    has_many :attendees, :inverse_of => :team
    accepts_nested_attributes_for :attendees
end