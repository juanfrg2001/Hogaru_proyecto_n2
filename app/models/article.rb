class Article < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true, length: {maximum: 140}
  before_save :set_visits_count

  def update_visits_count
    self.save if self.visits_coutn.nil?
    self.update(visits_coutn: self.visits_coutn + 1)
  end


  private

  def set_visits_count
    self.visits_coutn ||= 0
  end
end
