class User < ApplicationRecord
  has_many :messages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :username, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
