class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: true, uniqueness: true
  validates :birthday, presence: true, uniqueness: true

  validates :phone_number, presence: true, uniqueness: true

  validates :address, presence: true, uniqueness: true
  validates :city, presence: true, uniqueness: true
  validates :zip_code, presence: true, uniqueness: true
  validates :country, presence: true, uniqueness: true
end
