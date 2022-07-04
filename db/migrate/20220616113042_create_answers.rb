class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :content
      t.boolean :correct_flag
      t.references :question
      t.timestamps
    end
  end
end
