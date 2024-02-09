class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates_uniqueness_of :username
  scope :all_except, ->(user) { where.not(id: user) }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
