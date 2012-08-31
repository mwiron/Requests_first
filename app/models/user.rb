class User < ActiveRecord::Base
  #attr_accessible :encrypted_password, :firma, :salt, :username
    #has_many :requests
  #attr_accessor :username_confirmation, :password_confirmation, :password, :firma
  attr_accessible :password, :username, :username_confirmation, :password_confirmation, :firma, :salt
  validates_presence_of :username, :firma
  validates_uniqueness_of :username
  validates_confirmation_of :username, :password
  validates_length_of :password, :minimum => 6, :too_short => "Das Password muss mindestens 6 Zeichen lang sein!"
end

