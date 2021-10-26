class AddUserIdToAnnouncements < ActiveRecord::Migration[6.1]
  def change
    add_reference :announcements, :user, index: true
    add_foreign_key :announcements ,:users
  end
end
