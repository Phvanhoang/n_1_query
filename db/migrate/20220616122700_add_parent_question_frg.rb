class AddParentQuestionFrg < ActiveRecord::Migration[6.1]
  def change
    add_reference :questions, :parent_questions, foreign_key: true
  end
end
