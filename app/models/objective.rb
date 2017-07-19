class Objective < ActiveRecord::Base
    belongs_to :user
    has_many :pattern
end
