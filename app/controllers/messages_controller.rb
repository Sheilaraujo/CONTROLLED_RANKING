class MessagesController < ApplicationController
  def show
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to messages_path, notice: "Your message was sent!"
    else
      flash.now[:notice] = @message.errors.full_messages.join(", ")
      render :show
    end
  end

  private

  def message_params
    params.require(:message).permit(:to, :subject, :body)
  end
end
