class Document < ActiveRecord::Base
  #has_one :request
  belongs_to :request
  attr_accessible :document
  validates_presence_of :document
end
