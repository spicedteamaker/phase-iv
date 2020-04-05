class User < ApplicationRecord

  has_many :rentals
  has_many :films, through: :rentals
  belongs_to :account, required: false
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
