class Point < ApplicationRecord
  belongs_to :item

  def completed?
    !completed_at.blank?
  end
end
