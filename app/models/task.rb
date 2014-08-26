class Task < ActiveRecord::Base
  validates :name, :presence => true
  scope :done -> {where(done: true)}
  scope :not_done -> {where(not_done: false)}
end
