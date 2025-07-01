require 'rails_helper'

RSpec.describe User, type: :model do
  let(:valid_user) { User.create(email: "test_user_123@example.com",
                                 password: "testpass",
                                 username: "test_user_123") }
  let(:invalid_user) { User.create(email: nil,
                                   password: nil,
                                   username: nil) }
  let(:invalid_user2) { User.create(email: "",
                                    password: "",
                                    username: "") }

  describe '#create' do
    it 'successfully creates a new user when a valid username is given' do
      expect(valid_user.valid?).to be true
    end

    it 'fails to create a new user when username, password and email are not present' do
      expect(invalid_user.valid?).to be false
    end

    it 'fails to create a new user when username is a blank string' do
      expect(invalid_user2.valid?).to be false
    end
  end
end
