class Score < ApplicationRecord
  belongs_to :user_id
  belongs_to :quiz_id
end
