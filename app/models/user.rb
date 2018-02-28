class User < ApplicationRecord
  include Clearance::User

  has_many :reservations
  has_many :animals
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
