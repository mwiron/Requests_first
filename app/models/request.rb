class Request < ActiveRecord::Base
  include ActiveModel::Validations
  #has_many :tasks, :users, :documents
  has_many :documents
  belongs_to :tasks
  attr_accessible :KST, :abnahme_teradata, :analyse_und_design, :beschreibung, :realisierungTD, :fachl_freigabe_implementierung, :fachl_freigabe_implementierung, :fachliche_abnahme, :migration, :produktion, 
  :request, :sonderstatus, :tech_freigabe_implementierung, :technische_abnahme, :verantwortlicherGKVit,:verantwortlicherGKVfachl , :verantwortlicherITSG, :verantwortlicherTD, :ziel_migration
  validates_presence_of :request, :beschreibung
  #:verantwortlicherITSG, :verantwortlicherGKV, :verantwortlicherTD,
  validates_uniqueness_of :request
end
