require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(username: "test_user_123") }

end
