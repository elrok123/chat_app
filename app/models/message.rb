class Message < ApplicationRecord
  belongs_to :user

  validates :body, :user, presence: true
end
