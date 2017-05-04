class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name
  validates_presence_of :last_name
  validates_presence_of :dni
  validates_length_of :dni, :minimum => 8, :maximum => 15
  validates_uniqueness_of :dni
  validates_numericality_of :dni
  validates_numericality_of :phone_number
  validates_length_of :phone_number, :minimum => 7, :maximum => 10
  validates_presence_of :birthdate
  validates_presence_of :type
  validates_uniqueness_of :type, conditions: -> { where(type: 'King') }
  validates_confirmation_of :password
end
