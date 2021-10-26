class AddUserIdToArticles < ActiveRecord::Migration[6.1]
  def change
    add_reference :articles, :user
    add_foreign_key :articles ,:users
  end
end
