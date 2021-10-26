class AddDateToAnnouncements < ActiveRecord::Migration[6.1]
  def change
    add_column :announcements, :date, :Date
  end
end
