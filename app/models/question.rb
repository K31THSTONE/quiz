class Question < ApplicationRecord
    belongs_to :quiz
    has_many :answers, dependent: :destroy
    validates :title, presence: true, allow_nil: false
    validates :quiz_id, presence: true
end
