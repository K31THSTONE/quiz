class Quiz < ApplicationRecord
    serialize :question_ids, Array
    belongs_to :user
    validates :title,  presence: true 
    validates :user_id, presence: true
    validates :question_ids, presence: true
end    
