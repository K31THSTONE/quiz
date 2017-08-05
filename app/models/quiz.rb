class Quiz < ApplicationRecord
    belongs_to :user
    has_many :questions, dependent: :destroy
    validates :title,  presence: true, allow_nil: false 
    validates :user_id, presence: true
end    
