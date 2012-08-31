class Task < ActiveRecord::Base
  attr_accessible :beschreibung, :task
  has_many :requests
  validates_presence_of :beschreibung, :task
  validates_uniqueness_of :task
end
