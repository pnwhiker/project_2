class Subject < ActiveRecord::Base
    has_many :tweets
    has_many :authors, through: :tweets
end
