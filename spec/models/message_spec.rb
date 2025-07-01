require 'rails_helper'

RSpec.describe Message, type: :model do
  let(:user) { User.create(email: "test_user_123@example.com",
                                 password: "testpass",
                                 username: "test_user_123") }
  let(:message) { Message.create(body: "This is a test message", user: user) }
  let(:invalid_message) { Message.create(body: "", user: user) }
  let(:invalid_message2) { Message.create(body: "Test message...", user: nil) }

  describe '#create' do
    it 'successfully creates a new message assigned to test_user_123 when given a valid body' do
      expect(message.valid?).to be true
    end

    it 'fails to create a new message when given an invalid body' do
      expect(invalid_message.valid?).to be false
    end

    it 'fails to create a new message when no user provided' do
      expect(invalid_message2.valid?).to be false
    end
  end
end
