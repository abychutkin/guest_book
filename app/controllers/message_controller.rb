class MessageController < ApplicationController
  # GET /
  def index
    @messages = Message.all
  end

  # POST /messages/new
  def new
    @message = Message.new(message_params)
    # Задается сообщение об ошибке, если не удалось сохранить сообщение
    if !@message.save
      flash[:alert] = "Не удалось добавить сообщение"
    end
    redirect_to root_path
  end
  
  private
  def message_params
    params.permit(:name, :email, :text)
  end
end
