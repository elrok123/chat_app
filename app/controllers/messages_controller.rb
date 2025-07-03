class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_message, only: [:destroy]

  def create
    message = current_user.messages.build(message_params)
    message.save

    render turbo_stream: turbo_stream.append("messages",
                                              partial: "messages/message",
                                              locals: { message: message, is_current_user_message: current_user == message.user })
  end

  def destroy
    @message.destroy
  end

  private

  def message_params
      params.require(:message).permit(:body)
  end

  def set_message
      @message = Message.find(params[:id])
  end
end
