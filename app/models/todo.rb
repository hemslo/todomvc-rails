class Todo < ApplicationRecord
  validates :title, presence: true

  before_create :set_default_completed
  before_save :strip_title

  private

  def strip_title
    title.strip!
  end

  def set_default_completed
    self.completed = false if completed.nil?
  end
end
