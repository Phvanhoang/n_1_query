class CreateParentQuestion < ActiveRecord::Migration[6.1]
  def change
    create_table :parent_questions do |t|
      t.string :parent_content

      t.timestamps
    end
  end
end
