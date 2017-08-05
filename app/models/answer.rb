class Answer < ApplicationRecord
  belongs_to :question
  validates :content, presence: true, allow_nil: false
  validates :question_id, presence: true
  validates :correct, presence: true
end
