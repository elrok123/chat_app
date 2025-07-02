class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = Message.all
    @new_message = current_user.messages.build
  end
end
