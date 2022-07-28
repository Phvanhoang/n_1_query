class AddIsSentEmailToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :is_sent_email, :boolean, default: false
  end
end
