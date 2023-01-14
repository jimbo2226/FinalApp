class RemoveDiscriptionFromBook < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :discription, :text
  end
end
