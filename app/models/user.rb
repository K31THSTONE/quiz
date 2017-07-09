class User < ApplicationRecord
    has_many :quizzes
    validates :name, presence: true
    validates :email, presence: true
end
