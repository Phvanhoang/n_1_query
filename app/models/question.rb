class Question < ApplicationRecord
  belongs_to :parent_question, foreign_key: :parent_questions_id
  has_many :answers
end
