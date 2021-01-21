# This migration comes from books_module (originally 20210119192210)
class AddBookIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :book_id, :integer
    add_index :users, :book_id
  end
end
