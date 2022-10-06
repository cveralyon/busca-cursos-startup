class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :tickets, through: :orders
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
