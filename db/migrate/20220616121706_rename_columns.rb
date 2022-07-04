class RenameColumns < ActiveRecord::Migration[6.1]
  def change
    rename_column :questions, :content, :question_content
    rename_column :answers, :content, :answer_content
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
