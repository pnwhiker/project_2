class Author < ActiveRecord::Base
    has_many :tweets
    has_many :subjects, through: :tweets

end
